
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_softc {int device; } ;
typedef int device_t ;


 struct isci_softc* DEVICE2SOFTC (int ) ;
 struct isci_softc* g_isci ;
 int isci_allocate_pci_memory (struct isci_softc*) ;
 int isci_detach (int ) ;
 int isci_initialize (struct isci_softc*) ;
 int isci_interrupt_setup (struct isci_softc*) ;
 int isci_sysctl_initialize (struct isci_softc*) ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
isci_attach(device_t device)
{
 int error;
 struct isci_softc *isci = DEVICE2SOFTC(device);

 g_isci = isci;
 isci->device = device;
 pci_enable_busmaster(device);

 isci_allocate_pci_memory(isci);

 error = isci_initialize(isci);

 if (error)
 {
  isci_detach(device);
  return (error);
 }

 isci_interrupt_setup(isci);
 isci_sysctl_initialize(isci);

 return (0);
}
