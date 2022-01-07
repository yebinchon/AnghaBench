
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_state {int prefix; } ;


 int free (char*) ;
 char* prefix_filename (int ,char*) ;

__attribute__((used)) static void prefix_one(struct apply_state *state, char **name)
{
 char *old_name = *name;
 if (!old_name)
  return;
 *name = prefix_filename(state->prefix, *name);
 free(old_name);
}
