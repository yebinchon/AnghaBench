
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred1_state {int dummy; } ;


 int free (struct pred1_state*) ;

__attribute__((used)) static void
Pred1Term(void *v)
{
  struct pred1_state *state = (struct pred1_state *)v;
  free(state);
}
