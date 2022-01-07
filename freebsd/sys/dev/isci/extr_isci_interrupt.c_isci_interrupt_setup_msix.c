
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint32_t ;
struct isci_softc {size_t controller_count; int device; int * controllers; int * handlers; struct ISCI_INTERRUPT_INFO* interrupt_info; } ;
struct ISCI_INTERRUPT_INFO {size_t rid; int * tag; int * res; int * interrupt_target_handle; int * handlers; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int RF_ACTIVE ;
 int SCIC_MSIX_INTERRUPT_TYPE ;
 size_t SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,size_t*,int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct ISCI_INTERRUPT_INFO*,int **) ;
 int isci_interrupt_msix_handler ;
 int isci_log_message (int ,char*,char*) ;
 int scic_controller_get_handler_methods (int ,size_t,int *) ;

__attribute__((used)) static int
isci_interrupt_setup_msix(struct isci_softc *isci)
{
 uint32_t controller_index;

 scic_controller_get_handler_methods(SCIC_MSIX_INTERRUPT_TYPE,
     SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER, &isci->handlers[0]);

 for (controller_index = 0; controller_index < isci->controller_count;
     controller_index++) {
  uint32_t msix_index;
  uint8_t base_index = controller_index *
      SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER;

  for (msix_index = 0; msix_index < SCI_MAX_MSIX_MESSAGES_PER_CONTROLLER;
      msix_index++) {
   struct ISCI_INTERRUPT_INFO *info =
       &isci->interrupt_info[base_index+msix_index];

   info->handlers = &isci->handlers[msix_index];
   info->interrupt_target_handle =
       &isci->controllers[controller_index];

   info->rid = base_index+msix_index+1;

   info->res = bus_alloc_resource_any(isci->device,
       SYS_RES_IRQ, &info->rid, RF_ACTIVE);
   if (info->res == ((void*)0)) {
    isci_log_message(0, "ISCI",
        "bus_alloc_resource failed\n");
    return (-1);
   }

   info->tag = ((void*)0);
   if (bus_setup_intr(isci->device, info->res,
       INTR_TYPE_CAM | INTR_MPSAFE, ((void*)0),
       isci_interrupt_msix_handler, info, &info->tag)) {
    isci_log_message(0, "ISCI",
        "bus_setup_intr failed\n");
    return (-1);
   }
  }
 }

 return (0);
}
