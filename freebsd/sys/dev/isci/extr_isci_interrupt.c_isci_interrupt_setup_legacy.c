
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_softc {int num_interrupts; int device; int * handlers; struct ISCI_INTERRUPT_INFO* interrupt_info; } ;
struct ISCI_INTERRUPT_INFO {int * tag; int * res; scalar_t__ rid; void* interrupt_target_handle; int * handlers; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SCIC_LEGACY_LINE_INTERRUPT_TYPE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct ISCI_INTERRUPT_INFO*,int **) ;
 int isci_interrupt_legacy_handler ;
 int isci_log_message (int ,char*,char*) ;
 int scic_controller_get_handler_methods (int ,int ,int *) ;

__attribute__((used)) static int
isci_interrupt_setup_legacy(struct isci_softc *isci)
{
 struct ISCI_INTERRUPT_INFO *interrupt_info = &isci->interrupt_info[0];

 isci->num_interrupts = 1;

 scic_controller_get_handler_methods(SCIC_LEGACY_LINE_INTERRUPT_TYPE,
     0, &isci->handlers[0]);

 interrupt_info->handlers = &isci->handlers[0];
 interrupt_info->rid = 0;
 interrupt_info->interrupt_target_handle = (void *)isci;

 interrupt_info->res = bus_alloc_resource_any(isci->device, SYS_RES_IRQ,
     &interrupt_info->rid, RF_SHAREABLE|RF_ACTIVE);

 if (interrupt_info->res == ((void*)0)) {
  isci_log_message(0, "ISCI", "bus_alloc_resource failed\n");
  return (-1);
 }

 interrupt_info->tag = ((void*)0);
 if (bus_setup_intr(isci->device, interrupt_info->res,
     INTR_TYPE_CAM | INTR_MPSAFE, ((void*)0), isci_interrupt_legacy_handler,
     interrupt_info, &interrupt_info->tag)) {
  isci_log_message(0, "ISCI", "bus_setup_intr failed\n");
  return (-1);
 }

 return (0);
}
