
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
typedef int git_hash_ctx ;
struct TYPE_2__ {int (* update_fn ) (int *,char*,int) ;int (* init_fn ) (int *) ;} ;


 scalar_t__ EOF ;
 int flush_one_hunk (struct object_id*,int *) ;
 int get_oid_hex (char const*,struct object_id*) ;
 int isalpha (char) ;
 int oidclr (struct object_id*) ;
 int remove_space (char*) ;
 int scan_hunk_header (char*,int*,int*) ;
 int skip_prefix (char*,char*,char const**) ;
 scalar_t__ starts_with (char*,char*) ;
 int stdin ;
 scalar_t__ strbuf_getwholeline (struct strbuf*,int ,char) ;
 int strlen (char*) ;
 int stub1 (int *) ;
 int stub2 (int *,char*,int) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int get_one_patchid(struct object_id *next_oid, struct object_id *result,
      struct strbuf *line_buf, int stable)
{
 int patchlen = 0, found_next = 0;
 int before = -1, after = -1;
 git_hash_ctx ctx;

 the_hash_algo->init_fn(&ctx);
 oidclr(result);

 while (strbuf_getwholeline(line_buf, stdin, '\n') != EOF) {
  char *line = line_buf->buf;
  const char *p = line;
  int len;

  if (!skip_prefix(line, "diff-tree ", &p) &&
      !skip_prefix(line, "commit ", &p) &&
      !skip_prefix(line, "From ", &p) &&
      starts_with(line, "\\ ") && 12 < strlen(line))
   continue;

  if (!get_oid_hex(p, next_oid)) {
   found_next = 1;
   break;
  }


  if (!patchlen && !starts_with(line, "diff "))
   continue;


  if (before == -1) {
   if (starts_with(line, "index "))
    continue;
   else if (starts_with(line, "--- "))
    before = after = 1;
   else if (!isalpha(line[0]))
    break;
  }


  if (before == 0 && after == 0) {
   if (starts_with(line, "@@ -")) {

    scan_hunk_header(line, &before, &after);
    continue;
   }


   if (!starts_with(line, "diff "))
    break;


   if (stable)
    flush_one_hunk(result, &ctx);
   before = after = -1;
  }


  if (line[0] == '-' || line[0] == ' ')
   before--;
  if (line[0] == '+' || line[0] == ' ')
   after--;


  len = remove_space(line);
  patchlen += len;
  the_hash_algo->update_fn(&ctx, line, len);
 }

 if (!found_next)
  oidclr(next_oid);

 flush_one_hunk(result, &ctx);

 return patchlen;
}
