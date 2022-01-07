
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {scalar_t__ new_name; int new_mode; scalar_t__ old_name; scalar_t__ is_delete; scalar_t__ is_rename; int old_mode; struct patch* next; } ;
struct apply_state {int dummy; } ;


 int APPLY_SYMLINK_GOES_AWAY ;
 int APPLY_SYMLINK_IN_RESULT ;
 scalar_t__ S_ISLNK (int ) ;
 int register_symlink_changes (struct apply_state*,scalar_t__,int ) ;

__attribute__((used)) static void prepare_symlink_changes(struct apply_state *state, struct patch *patch)
{
 for ( ; patch; patch = patch->next) {
  if ((patch->old_name && S_ISLNK(patch->old_mode)) &&
      (patch->is_rename || patch->is_delete))

   register_symlink_changes(state, patch->old_name, APPLY_SYMLINK_GOES_AWAY);

  if (patch->new_name && S_ISLNK(patch->new_mode))

   register_symlink_changes(state, patch->new_name, APPLY_SYMLINK_IN_RESULT);
 }
}
