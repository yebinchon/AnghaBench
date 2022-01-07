
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {scalar_t__ is_delete; scalar_t__ is_new; int is_rename; scalar_t__ is_copy; } ;
struct apply_state {int dummy; } ;


 int create_file (struct apply_state*,struct patch*) ;
 int remove_file (struct apply_state*,struct patch*,int) ;

__attribute__((used)) static int write_out_one_result(struct apply_state *state,
    struct patch *patch,
    int phase)
{
 if (patch->is_delete > 0) {
  if (phase == 0)
   return remove_file(state, patch, 1);
  return 0;
 }
 if (patch->is_new > 0 || patch->is_copy) {
  if (phase == 1)
   return create_file(state, patch);
  return 0;
 }




 if (phase == 0)
  return remove_file(state, patch, patch->is_rename);
 if (phase == 1)
  return create_file(state, patch);
 return 0;
}
