
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 scalar_t__ ENOTDIR ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ errno ;
 int error_errno (int ,int ) ;
 int git_common_path (char*,char const*) ;
 int remove_dir_recursively (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int unlink (int ) ;

__attribute__((used)) static int delete_git_dir(const char *id)
{
 struct strbuf sb = STRBUF_INIT;
 int ret;

 strbuf_addstr(&sb, git_common_path("worktrees/%s", id));
 ret = remove_dir_recursively(&sb, 0);
 if (ret < 0 && errno == ENOTDIR)
  ret = unlink(sb.buf);
 if (ret)
  error_errno(_("failed to delete '%s'"), sb.buf);
 strbuf_release(&sb);
 return ret;
}
