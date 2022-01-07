
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {struct patch* next; } ;
struct apply_state {scalar_t__ apply_verbosity; } ;


 int _ (char*) ;
 int check_patch (struct apply_state*,struct patch*) ;
 int prepare_fn_table (struct apply_state*,struct patch*) ;
 int prepare_symlink_changes (struct apply_state*,struct patch*) ;
 int say_patch_name (int ,int ,struct patch*) ;
 int stderr ;
 scalar_t__ verbosity_normal ;

__attribute__((used)) static int check_patch_list(struct apply_state *state, struct patch *patch)
{
 int err = 0;

 prepare_symlink_changes(state, patch);
 prepare_fn_table(state, patch);
 while (patch) {
  int res;
  if (state->apply_verbosity > verbosity_normal)
   say_patch_name(stderr,
           _("Checking patch %s..."), patch);
  res = check_patch(state, patch);
  if (res == -128)
   return -128;
  err |= res;
  patch = patch->next;
 }
 return err;
}
