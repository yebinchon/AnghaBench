
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct apply_state {scalar_t__ cached; TYPE_1__* repo; scalar_t__ check_index; } ;
struct TYPE_2__ {int index; } ;


 int EXISTS_IN_INDEX ;
 int EXISTS_IN_WORKTREE ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 int error_errno (char*,char const*) ;
 scalar_t__ has_symlink_leading_path (char const*,int ) ;
 scalar_t__ index_name_pos (int ,char const*,int ) ;
 int is_missing_file_error (int ) ;
 int lstat (char const*,struct stat*) ;
 int strlen (char const*) ;

__attribute__((used)) static int check_to_create(struct apply_state *state,
      const char *new_name,
      int ok_if_exists)
{
 struct stat nst;

 if (state->check_index &&
     index_name_pos(state->repo->index, new_name, strlen(new_name)) >= 0 &&
     !ok_if_exists)
  return EXISTS_IN_INDEX;
 if (state->cached)
  return 0;

 if (!lstat(new_name, &nst)) {
  if (S_ISDIR(nst.st_mode) || ok_if_exists)
   return 0;







  if (has_symlink_leading_path(new_name, strlen(new_name)))
   return 0;

  return EXISTS_IN_WORKTREE;
 } else if (!is_missing_file_error(errno)) {
  return error_errno("%s", new_name);
 }
 return 0;
}
