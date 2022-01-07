
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int is_copy; int new_name; } ;
struct gitdiff_data {scalar_t__ p_value; int root; } ;


 int find_name (int ,char const*,int *,scalar_t__,int ) ;
 int free (int ) ;

__attribute__((used)) static int gitdiff_copydst(struct gitdiff_data *state,
      const char *line,
      struct patch *patch)
{
 patch->is_copy = 1;
 free(patch->new_name);
 patch->new_name = find_name(state->root, line, ((void*)0), state->p_value ? state->p_value - 1 : 0, 0);
 return 0;
}
