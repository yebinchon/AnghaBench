
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct isci_softc {scalar_t__ controller_count; scalar_t__ num_interrupts; int device; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER ;
 scalar_t__ TRUE ;
 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 int isci_interrupt_setup_legacy (struct isci_softc*) ;
 int isci_interrupt_setup_msix (struct isci_softc*) ;
 scalar_t__ pci_alloc_msix (int ,scalar_t__*) ;
 scalar_t__ pci_msix_count (int ) ;

void
isci_interrupt_setup(struct isci_softc *isci)
{
 uint8_t max_msix_messages = SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER *
     isci->controller_count;
 BOOL use_msix = FALSE;
 uint32_t force_legacy_interrupts = 0;

 TUNABLE_INT_FETCH("hw.isci.force_legacy_interrupts",
     &force_legacy_interrupts);

 if (!force_legacy_interrupts &&
     pci_msix_count(isci->device) >= max_msix_messages) {

  isci->num_interrupts = max_msix_messages;
  if (pci_alloc_msix(isci->device, &isci->num_interrupts) == 0 &&
      isci->num_interrupts == max_msix_messages)
   use_msix = TRUE;
 }

 if (use_msix == TRUE)
  isci_interrupt_setup_msix(isci);
 else
  isci_interrupt_setup_legacy(isci);
}
