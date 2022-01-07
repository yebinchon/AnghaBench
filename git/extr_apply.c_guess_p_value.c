
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apply_state {int prefix; int root; } ;


 int count_slashes (int ) ;
 char* find_name_traditional (int *,char const*,int *,int ) ;
 int free (char*) ;
 scalar_t__ is_dev_null (char const*) ;
 scalar_t__ starts_with (char*,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int guess_p_value(struct apply_state *state, const char *nameline)
{
 char *name, *cp;
 int val = -1;

 if (is_dev_null(nameline))
  return -1;
 name = find_name_traditional(&state->root, nameline, ((void*)0), 0);
 if (!name)
  return -1;
 cp = strchr(name, '/');
 if (!cp)
  val = 0;
 else if (state->prefix) {




  if (starts_with(name, state->prefix))
   val = count_slashes(state->prefix);
  else {
   cp++;
   if (starts_with(cp, state->prefix))
    val = count_slashes(state->prefix) + 1;
  }
 }
 free(name);
 return val;
}
