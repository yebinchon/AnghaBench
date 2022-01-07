
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ISCI_INTERRUPT_INFO {TYPE_1__* handlers; scalar_t__ interrupt_target_handle; } ;
struct ISCI_CONTROLLER {scalar_t__ release_queued_ccbs; int lock; int scif_controller_handle; } ;
struct TYPE_2__ {int (* completion_handler ) (int ) ;scalar_t__ (* interrupt_handler ) (int ) ;} ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef scalar_t__ (* SCIC_CONTROLLER_INTERRUPT_HANDLER ) (int ) ;
typedef int (* SCIC_CONTROLLER_COMPLETION_HANDLER ) (int ) ;


 scalar_t__ TRUE ;
 int isci_controller_release_queued_ccbs (struct ISCI_CONTROLLER*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scif_controller_get_scic_handle (int ) ;

void
isci_interrupt_msix_handler(void *arg)
{
 struct ISCI_INTERRUPT_INFO *interrupt_info =
     (struct ISCI_INTERRUPT_INFO *)arg;
 struct ISCI_CONTROLLER *controller =
     (struct ISCI_CONTROLLER *)interrupt_info->interrupt_target_handle;
 SCIC_CONTROLLER_INTERRUPT_HANDLER interrupt_handler;
 SCIC_CONTROLLER_COMPLETION_HANDLER completion_handler;

 interrupt_handler = interrupt_info->handlers->interrupt_handler;
 completion_handler = interrupt_info->handlers->completion_handler;

 SCI_CONTROLLER_HANDLE_T scic_controller_handle;

 scic_controller_handle = scif_controller_get_scic_handle(
     controller->scif_controller_handle);

 if (interrupt_handler(scic_controller_handle)) {
  mtx_lock(&controller->lock);
  completion_handler(scic_controller_handle);





  if (controller->release_queued_ccbs == TRUE)
   isci_controller_release_queued_ccbs(controller);
  mtx_unlock(&controller->lock);
 }
}
