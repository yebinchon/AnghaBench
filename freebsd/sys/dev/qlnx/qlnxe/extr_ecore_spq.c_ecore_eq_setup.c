
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_eq; } ;
struct TYPE_2__ {int chain; } ;


 int ecore_chain_reset (int *) ;

void ecore_eq_setup(struct ecore_hwfn *p_hwfn)
{
 ecore_chain_reset(&p_hwfn->p_eq->chain);
}
