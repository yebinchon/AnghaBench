
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int is_new; int is_delete; char* new_name; char* old_name; } ;
struct apply_state {int p_value_known; int p_value; int linenr; int root; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 char* find_name_traditional (int *,char const*,char*,int) ;
 int free (char*) ;
 int guess_p_value (struct apply_state*,char const*) ;
 scalar_t__ has_epoch_timestamp (char const*) ;
 scalar_t__ is_dev_null (char const*) ;
 char* xstrdup_or_null (char*) ;

__attribute__((used)) static int parse_traditional_patch(struct apply_state *state,
       const char *first,
       const char *second,
       struct patch *patch)
{
 char *name;

 first += 4;
 second += 4;
 if (!state->p_value_known) {
  int p, q;
  p = guess_p_value(state, first);
  q = guess_p_value(state, second);
  if (p < 0) p = q;
  if (0 <= p && p == q) {
   state->p_value = p;
   state->p_value_known = 1;
  }
 }
 if (is_dev_null(first)) {
  patch->is_new = 1;
  patch->is_delete = 0;
  name = find_name_traditional(&state->root, second, ((void*)0), state->p_value);
  patch->new_name = name;
 } else if (is_dev_null(second)) {
  patch->is_new = 0;
  patch->is_delete = 1;
  name = find_name_traditional(&state->root, first, ((void*)0), state->p_value);
  patch->old_name = name;
 } else {
  char *first_name;
  first_name = find_name_traditional(&state->root, first, ((void*)0), state->p_value);
  name = find_name_traditional(&state->root, second, first_name, state->p_value);
  free(first_name);
  if (has_epoch_timestamp(first)) {
   patch->is_new = 1;
   patch->is_delete = 0;
   patch->new_name = name;
  } else if (has_epoch_timestamp(second)) {
   patch->is_new = 0;
   patch->is_delete = 1;
   patch->old_name = name;
  } else {
   patch->old_name = name;
   patch->new_name = xstrdup_or_null(name);
  }
 }
 if (!name)
  return error(_("unable to find filename in patch at line %d"), state->linenr);

 return 0;
}
