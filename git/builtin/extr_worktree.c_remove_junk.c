
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ getpid () ;
 int is_junk ;
 scalar_t__ junk_git_dir ;
 scalar_t__ junk_pid ;
 scalar_t__ junk_work_tree ;
 int remove_dir_recursively (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void remove_junk(void)
{
 struct strbuf sb = STRBUF_INIT;
 if (!is_junk || getpid() != junk_pid)
  return;
 if (junk_git_dir) {
  strbuf_addstr(&sb, junk_git_dir);
  remove_dir_recursively(&sb, 0);
  strbuf_reset(&sb);
 }
 if (junk_work_tree) {
  strbuf_addstr(&sb, junk_work_tree);
  remove_dir_recursively(&sb, 0);
 }
 strbuf_release(&sb);
}
