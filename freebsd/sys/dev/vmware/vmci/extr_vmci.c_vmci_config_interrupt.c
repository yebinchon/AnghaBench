
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_softc {int dummy; } ;


 int vmci_allocate_interrupt_resources (struct vmci_softc*) ;
 int vmci_check_intr_cnt (struct vmci_softc*) ;
 int vmci_setup_interrupts (struct vmci_softc*) ;

__attribute__((used)) static int
vmci_config_interrupt(struct vmci_softc *sc)
{
 int error;

 error = vmci_check_intr_cnt(sc);
 if (error)
  return (error);

 error = vmci_allocate_interrupt_resources(sc);
 if (error)
  return (error);

 error = vmci_setup_interrupts(sc);
 if (error)
  return (error);

 return (0);
}
