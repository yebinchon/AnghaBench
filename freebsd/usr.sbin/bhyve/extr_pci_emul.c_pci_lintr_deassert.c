
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pin; scalar_t__ state; int lock; } ;
struct pci_devinst {TYPE_1__ pi_lintr; } ;


 scalar_t__ ASSERTED ;
 void* IDLE ;
 scalar_t__ PENDING ;
 int assert (int) ;
 int pci_irq_deassert (struct pci_devinst*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
pci_lintr_deassert(struct pci_devinst *pi)
{

 assert(pi->pi_lintr.pin > 0);

 pthread_mutex_lock(&pi->pi_lintr.lock);
 if (pi->pi_lintr.state == ASSERTED) {
  pi->pi_lintr.state = IDLE;
  pci_irq_deassert(pi);
 } else if (pi->pi_lintr.state == PENDING)
  pi->pi_lintr.state = IDLE;
 pthread_mutex_unlock(&pi->pi_lintr.lock);
}
