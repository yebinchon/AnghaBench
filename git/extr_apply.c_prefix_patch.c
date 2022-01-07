
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int old_name; int new_name; scalar_t__ is_toplevel_relative; } ;
struct apply_state {int prefix; } ;


 int prefix_one (struct apply_state*,int *) ;

__attribute__((used)) static void prefix_patch(struct apply_state *state, struct patch *p)
{
 if (!state->prefix || p->is_toplevel_relative)
  return;
 prefix_one(state, &p->new_name);
 prefix_one(state, &p->old_name);
}
