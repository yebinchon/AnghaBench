
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_softc {int capabilities; int vmci_ioh0; int vmci_iot0; int vmci_intr_type; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VMCI_CAPS_NOTIFICATIONS ;
 int VMCI_CONTROL_ADDR ;
 int VMCI_CONTROL_INT_ENABLE ;
 int VMCI_IMR_ADDR ;
 int VMCI_IMR_DATAGRAM ;
 int VMCI_IMR_NOTIFICATION ;
 int VMCI_INTR_TYPE_INTX ;
 int VMCI_INTR_TYPE_MSI ;
 int VMCI_INTR_TYPE_MSIX ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int * data_buffer ;
 int data_buffer_size ;
 int * malloc (int ,int ,int) ;
 int vmci_config_interrupt (struct vmci_softc*) ;

__attribute__((used)) static int
vmci_config_interrupts(struct vmci_softc *sc)
{
 int error;

 data_buffer = malloc(data_buffer_size, M_DEVBUF, M_ZERO | M_NOWAIT);
 if (data_buffer == ((void*)0))
  return (ENOMEM);

 sc->vmci_intr_type = VMCI_INTR_TYPE_MSIX;
 error = vmci_config_interrupt(sc);
 if (error) {
  sc->vmci_intr_type = VMCI_INTR_TYPE_MSI;
  error = vmci_config_interrupt(sc);
 }
 if (error) {
  sc->vmci_intr_type = VMCI_INTR_TYPE_INTX;
  error = vmci_config_interrupt(sc);
 }
 if (error)
  return (error);


 if (sc->capabilities & VMCI_CAPS_NOTIFICATIONS)
  bus_space_write_4(sc->vmci_iot0, sc->vmci_ioh0,
      VMCI_IMR_ADDR, VMCI_IMR_DATAGRAM | VMCI_IMR_NOTIFICATION);
 else
  bus_space_write_4(sc->vmci_iot0, sc->vmci_ioh0,
      VMCI_IMR_ADDR, VMCI_IMR_DATAGRAM);


 bus_space_write_4(sc->vmci_iot0, sc->vmci_ioh0,
     VMCI_CONTROL_ADDR, VMCI_CONTROL_INT_ENABLE);

 return (0);
}
