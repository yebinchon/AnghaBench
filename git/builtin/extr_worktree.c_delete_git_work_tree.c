
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error_errno (int ,int ) ;
 scalar_t__ remove_dir_recursively (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int delete_git_work_tree(struct worktree *wt)
{
 struct strbuf sb = STRBUF_INIT;
 int ret = 0;

 strbuf_addstr(&sb, wt->path);
 if (remove_dir_recursively(&sb, 0)) {
  error_errno(_("failed to delete '%s'"), sb.buf);
  ret = -1;
 }
 strbuf_release(&sb);
 return ret;
}
