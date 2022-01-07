
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct patch {int old_name; int old_mode; } ;
struct apply_state {int cached; TYPE_1__* repo; int ita_only; scalar_t__ update_index; } ;
struct TYPE_2__ {int index; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 scalar_t__ remove_file_from_index (int ,int ) ;
 int remove_or_warn (int ,int ) ;
 int remove_path (int ) ;

__attribute__((used)) static int remove_file(struct apply_state *state, struct patch *patch, int rmdir_empty)
{
 if (state->update_index && !state->ita_only) {
  if (remove_file_from_index(state->repo->index, patch->old_name) < 0)
   return error(_("unable to remove %s from index"), patch->old_name);
 }
 if (!state->cached) {
  if (!remove_or_warn(patch->old_mode, patch->old_name) && rmdir_empty) {
   remove_path(patch->old_name);
  }
 }
 return 0;
}
