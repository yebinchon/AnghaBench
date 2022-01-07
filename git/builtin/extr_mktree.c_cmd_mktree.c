
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
typedef scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int ) ;


 scalar_t__ EOF ;
 int N_ (char*) ;
 struct option const OPT_BOOL (char,int *,int*,int ) ;
 struct option const OPT_END () ;
 struct option const OPT_SET_INT (int ,char*,int*,int ,int) ;
 struct strbuf STRBUF_INIT ;
 int die (char*) ;
 int exit (int ) ;
 int fflush (int ) ;
 int mktree_line (char*,int,int) ;
 int mktree_usage ;
 int oid_to_hex (struct object_id*) ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 int puts (int ) ;
 int stdin ;
 int stdout ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 scalar_t__ strbuf_getline_nul (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int used ;
 int write_tree (struct object_id*) ;

int cmd_mktree(int ac, const char **av, const char *prefix)
{
 struct strbuf sb = STRBUF_INIT;
 struct object_id oid;
 int nul_term_line = 0;
 int allow_missing = 0;
 int is_batch_mode = 0;
 int got_eof = 0;
 strbuf_getline_fn getline_fn;

 const struct option option[] = {
  OPT_BOOL('z', ((void*)0), &nul_term_line, N_("input is NUL terminated")),
  OPT_SET_INT( 0 , "missing", &allow_missing, N_("allow missing objects"), 1),
  OPT_SET_INT( 0 , "batch", &is_batch_mode, N_("allow creation of more than one tree"), 1),
  OPT_END()
 };

 ac = parse_options(ac, av, prefix, option, mktree_usage, 0);
 getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;

 while (!got_eof) {
  while (1) {
   if (getline_fn(&sb, stdin) == EOF) {
    got_eof = 1;
    break;
   }
   if (sb.buf[0] == '\0') {

    if (is_batch_mode)
     break;
    die("input format error: (blank line only valid in batch mode)");
   }
   mktree_line(sb.buf, nul_term_line, allow_missing);
  }
  if (is_batch_mode && got_eof && used < 1) {





   ;
  } else {
   write_tree(&oid);
   puts(oid_to_hex(&oid));
   fflush(stdout);
  }
  used=0;
 }
 strbuf_release(&sb);
 exit(0);
}
