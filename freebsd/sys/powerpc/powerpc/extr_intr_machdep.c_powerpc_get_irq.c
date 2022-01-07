
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ node; int irqs; int ipis; scalar_t__ base; int * dev; } ;


 int KASSERT (int,char*) ;
 int MAX_PICS ;
 int intr_table_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ nirqs ;
 int npics ;
 TYPE_1__* piclist ;

u_int
powerpc_get_irq(uint32_t node, u_int pin)
{
 int idx;

 if (node == 0)
  return (pin);

 mtx_lock(&intr_table_lock);
 for (idx = 0; idx < npics; idx++) {
  if (piclist[idx].node == node) {
   mtx_unlock(&intr_table_lock);
   return (piclist[idx].base + pin);
  }
 }







 piclist[idx].dev = ((void*)0);
 piclist[idx].node = node;
 piclist[idx].irqs = 124;
 piclist[idx].ipis = 4;
 piclist[idx].base = nirqs;
 nirqs += (1 << 25);
 npics++;

 KASSERT(npics < MAX_PICS,
     ("Number of PICs exceeds maximum (%d)", MAX_PICS));

 mtx_unlock(&intr_table_lock);

 return (piclist[idx].base + pin);
}
