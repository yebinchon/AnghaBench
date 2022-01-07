
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_flags; struct TYPE_3__* n_next; } ;
typedef TYPE_1__ NODE ;


 int NF_NODEST ;
 TYPE_1__* graph ;

__attribute__((used)) static void
clear_cycle(void)
{
 NODE *n;

 for (n = graph; n != ((void*)0); n = n->n_next)
  n->n_flags &= ~NF_NODEST;
}
