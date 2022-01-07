
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int show_untracked_files; } ;


 int SHOW_ALL_UNTRACKED_FILES ;
 int SHOW_NORMAL_UNTRACKED_FILES ;
 int SHOW_NO_UNTRACKED_FILES ;
 int _ (char*) ;
 int die (int ,int ) ;
 int strcmp (int ,char*) ;
 int untracked_files_arg ;

__attribute__((used)) static void handle_untracked_files_arg(struct wt_status *s)
{
 if (!untracked_files_arg)
  ;
 else if (!strcmp(untracked_files_arg, "no"))
  s->show_untracked_files = SHOW_NO_UNTRACKED_FILES;
 else if (!strcmp(untracked_files_arg, "normal"))
  s->show_untracked_files = SHOW_NORMAL_UNTRACKED_FILES;
 else if (!strcmp(untracked_files_arg, "all"))
  s->show_untracked_files = SHOW_ALL_UNTRACKED_FILES;




 else
  die(_("Invalid untracked files mode '%s'"), untracked_files_arg);
}
