
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct option {int dummy; } ;
struct notes_tree {int dummy; } ;


 scalar_t__ EOF ;
 int IGNORE_MISSING ;
 int NOTES_INIT_WRITABLE ;
 int N_ (char*) ;
 struct option OPT_BIT (int ,char*,unsigned int*,int ,int ) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_END () ;
 struct strbuf STRBUF_INIT ;
 int commit_notes (int ,struct notes_tree*,char*) ;
 int free_notes (struct notes_tree*) ;
 int git_notes_remove_usage ;
 struct notes_tree* init_notes_check (char*,int ) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int remove_one_note (struct notes_tree*,char const*,unsigned int) ;
 int stdin ;
 scalar_t__ strbuf_getwholeline (struct strbuf*,int ,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static int remove_cmd(int argc, const char **argv, const char *prefix)
{
 unsigned flag = 0;
 int from_stdin = 0;
 struct option options[] = {
  OPT_BIT(0, "ignore-missing", &flag,
   N_("attempt to remove non-existent note is not an error"),
   IGNORE_MISSING),
  OPT_BOOL(0, "stdin", &from_stdin,
       N_("read object names from the standard input")),
  OPT_END()
 };
 struct notes_tree *t;
 int retval = 0;

 argc = parse_options(argc, argv, prefix, options,
        git_notes_remove_usage, 0);

 t = init_notes_check("remove", NOTES_INIT_WRITABLE);

 if (!argc && !from_stdin) {
  retval = remove_one_note(t, "HEAD", flag);
 } else {
  while (*argv) {
   retval |= remove_one_note(t, *argv, flag);
   argv++;
  }
 }
 if (from_stdin) {
  struct strbuf sb = STRBUF_INIT;
  while (strbuf_getwholeline(&sb, stdin, '\n') != EOF) {
   strbuf_rtrim(&sb);
   retval |= remove_one_note(t, sb.buf, flag);
  }
  strbuf_release(&sb);
 }
 if (!retval)
  commit_notes(the_repository, t,
        "Notes removed by 'git notes remove'");
 free_notes(t);
 return retval;
}
