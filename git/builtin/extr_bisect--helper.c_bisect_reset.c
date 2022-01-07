
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct object_id {int dummy; } ;
struct argv_array {int argv; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int RUN_GIT_CMD ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_pushl (struct argv_array*,char*,char const*,char*,int *) ;
 int bisect_clean_state () ;
 int error (char*,char const*) ;
 int file_exists (int ) ;
 scalar_t__ get_oid_commit (char const*,struct object_id*) ;
 int git_path_bisect_head () ;
 int git_path_bisect_start () ;
 int printf (char*) ;
 scalar_t__ run_command_v_opt (int ,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_read_file (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;

__attribute__((used)) static int bisect_reset(const char *commit)
{
 struct strbuf branch = STRBUF_INIT;

 if (!commit) {
  if (strbuf_read_file(&branch, git_path_bisect_start(), 0) < 1) {
   printf(_("We are not bisecting.\n"));
   return 0;
  }
  strbuf_rtrim(&branch);
 } else {
  struct object_id oid;

  if (get_oid_commit(commit, &oid))
   return error(_("'%s' is not a valid commit"), commit);
  strbuf_addstr(&branch, commit);
 }

 if (!file_exists(git_path_bisect_head())) {
  struct argv_array argv = ARGV_ARRAY_INIT;

  argv_array_pushl(&argv, "checkout", branch.buf, "--", ((void*)0));
  if (run_command_v_opt(argv.argv, RUN_GIT_CMD)) {
   strbuf_release(&branch);
   argv_array_clear(&argv);
   return error(_("could not check out original"
           " HEAD '%s'. Try 'git bisect"
           " reset <commit>'."), branch.buf);
  }
  argv_array_clear(&argv);
 }

 strbuf_release(&branch);
 return bisect_clean_state();
}
