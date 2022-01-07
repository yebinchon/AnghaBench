
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int lines_added; int lines_deleted; scalar_t__ new_name; scalar_t__ old_name; } ;
struct apply_state {int max_change; int max_len; } ;


 int quote_c_style (scalar_t__,int *,int *,int ) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void patch_stats(struct apply_state *state, struct patch *patch)
{
 int lines = patch->lines_added + patch->lines_deleted;

 if (lines > state->max_change)
  state->max_change = lines;
 if (patch->old_name) {
  int len = quote_c_style(patch->old_name, ((void*)0), ((void*)0), 0);
  if (!len)
   len = strlen(patch->old_name);
  if (len > state->max_len)
   state->max_len = len;
 }
 if (patch->new_name) {
  int len = quote_c_style(patch->new_name, ((void*)0), ((void*)0), 0);
  if (!len)
   len = strlen(patch->new_name);
  if (len > state->max_len)
   state->max_len = len;
 }
}
