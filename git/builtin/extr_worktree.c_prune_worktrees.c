
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 struct strbuf STRBUF_INIT ;
 int closedir (int *) ;
 int delete_git_dir (int ) ;
 int delete_worktrees_dir_if_empty () ;
 int git_path (char*) ;
 scalar_t__ is_dot_or_dotdot (int ) ;
 int * opendir (int ) ;
 int printf (char*,char*) ;
 int prune_worktree (int ,struct strbuf*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ show_only ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void prune_worktrees(void)
{
 struct strbuf reason = STRBUF_INIT;
 DIR *dir = opendir(git_path("worktrees"));
 struct dirent *d;
 if (!dir)
  return;
 while ((d = readdir(dir)) != ((void*)0)) {
  if (is_dot_or_dotdot(d->d_name))
   continue;
  strbuf_reset(&reason);
  if (!prune_worktree(d->d_name, &reason))
   continue;
  if (show_only || verbose)
   printf("%s\n", reason.buf);
  if (show_only)
   continue;
  delete_git_dir(d->d_name);
 }
 closedir(dir);
 if (!show_only)
  delete_worktrees_dir_if_empty();
 strbuf_release(&reason);
}
