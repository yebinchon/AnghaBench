
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
typedef scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int ) ;
struct TYPE_2__ {int hexsz; } ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ add_cacheinfo (unsigned int,struct object_id*,char*,int) ;
 int die (char*,...) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ get_oid_hex (char*,struct object_id*) ;
 scalar_t__ remove_file_from_cache (char*) ;
 int stderr ;
 int stdin ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 scalar_t__ strbuf_getline_nul (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchr (char*,char) ;
 unsigned long strtoul (char*,char**,int) ;
 TYPE_1__* the_hash_algo ;
 scalar_t__ unquote_c_style (struct strbuf*,char*,int *) ;
 int verify_path (char*,unsigned int) ;

__attribute__((used)) static void read_index_info(int nul_term_line)
{
 const int hexsz = the_hash_algo->hexsz;
 struct strbuf buf = STRBUF_INIT;
 struct strbuf uq = STRBUF_INIT;
 strbuf_getline_fn getline_fn;

 getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;
 while (getline_fn(&buf, stdin) != EOF) {
  char *ptr, *tab;
  char *path_name;
  struct object_id oid;
  unsigned int mode;
  unsigned long ul;
  int stage;
  errno = 0;
  ul = strtoul(buf.buf, &ptr, 8);
  if (ptr == buf.buf || *ptr != ' '
      || errno || (unsigned int) ul != ul)
   goto bad_line;
  mode = ul;

  tab = strchr(ptr, '\t');
  if (!tab || tab - ptr < hexsz + 1)
   goto bad_line;

  if (tab[-2] == ' ' && '0' <= tab[-1] && tab[-1] <= '3') {
   stage = tab[-1] - '0';
   ptr = tab + 1;
   tab = tab - 2;
  }
  else {
   stage = 0;
   ptr = tab + 1;
  }

  if (get_oid_hex(tab - hexsz, &oid) ||
   tab[-(hexsz + 1)] != ' ')
   goto bad_line;

  path_name = ptr;
  if (!nul_term_line && path_name[0] == '"') {
   strbuf_reset(&uq);
   if (unquote_c_style(&uq, path_name, ((void*)0))) {
    die("git update-index: bad quoting of path name");
   }
   path_name = uq.buf;
  }

  if (!verify_path(path_name, mode)) {
   fprintf(stderr, "Ignoring path %s\n", path_name);
   continue;
  }

  if (!mode) {

   if (remove_file_from_cache(path_name))
    die("git update-index: unable to remove %s",
        ptr);
  }
  else {




   ptr[-(hexsz + 2)] = ptr[-1] = 0;
   if (add_cacheinfo(mode, &oid, path_name, stage))
    die("git update-index: unable to update %s",
        path_name);
  }
  continue;

 bad_line:
  die("malformed index info %s", buf.buf);
 }
 strbuf_release(&buf);
 strbuf_release(&uq);
}
