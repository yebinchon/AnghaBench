
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;




 struct strbuf STRBUF_INIT ;
 int _ (int ) ;
 scalar_t__ junk_git_dir ;
 int junk_git_dir_flags ;
 int junk_leave_repo_msg ;
 int junk_mode ;
 scalar_t__ junk_work_tree ;
 int junk_work_tree_flags ;
 int remove_dir_recursively (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int warning (char*,int ) ;

__attribute__((used)) static void remove_junk(void)
{
 struct strbuf sb = STRBUF_INIT;

 switch (junk_mode) {
 case 128:
  warning("%s", _(junk_leave_repo_msg));

 case 129:
  return;
 default:

  break;
 }

 if (junk_git_dir) {
  strbuf_addstr(&sb, junk_git_dir);
  remove_dir_recursively(&sb, junk_git_dir_flags);
  strbuf_reset(&sb);
 }
 if (junk_work_tree) {
  strbuf_addstr(&sb, junk_work_tree);
  remove_dir_recursively(&sb, junk_work_tree_flags);
 }
 strbuf_release(&sb);
}
