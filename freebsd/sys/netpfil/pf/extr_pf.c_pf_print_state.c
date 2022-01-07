
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state {int dummy; } ;


 int pf_print_state_parts (struct pf_state*,int *,int *) ;

void
pf_print_state(struct pf_state *s)
{
 pf_print_state_parts(s, ((void*)0), ((void*)0));
}
