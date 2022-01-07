
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int old_name; scalar_t__ is_rename; scalar_t__ is_copy; } ;
struct apply_state {int dummy; } ;


 struct patch* in_fn_table (struct apply_state*,int ) ;
 scalar_t__ to_be_deleted (struct patch*) ;
 scalar_t__ was_deleted (struct patch*) ;

__attribute__((used)) static struct patch *previous_patch(struct apply_state *state,
        struct patch *patch,
        int *gone)
{
 struct patch *previous;

 *gone = 0;
 if (patch->is_copy || patch->is_rename)
  return ((void*)0);

 previous = in_fn_table(state, patch->old_name);
 if (!previous)
  return ((void*)0);

 if (to_be_deleted(previous))
  return ((void*)0);

 if (was_deleted(previous))
  *gone = 1;

 return previous;
}
