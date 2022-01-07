
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ISCI_CONTROLLER {int scif_controller_handle; } ;
struct TYPE_3__ {scalar_t__ (* interrupt_handler ) (int ) ;int (* completion_handler ) (int ) ;} ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_CONTROLLER_HANDLER_METHODS_T ;


 int SCIC_NO_INTERRUPTS ;
 scalar_t__ TRUE ;
 int scic_controller_get_handler_methods (int ,int,TYPE_1__*) ;
 int scif_controller_get_scic_handle (int ) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ) ;

void
isci_interrupt_poll_handler(struct ISCI_CONTROLLER *controller)
{
 SCI_CONTROLLER_HANDLE_T scic_controller =
     scif_controller_get_scic_handle(controller->scif_controller_handle);
 SCIC_CONTROLLER_HANDLER_METHODS_T handlers;

 scic_controller_get_handler_methods(SCIC_NO_INTERRUPTS, 0x0, &handlers);

 if(handlers.interrupt_handler(scic_controller) == TRUE) {






  handlers.completion_handler(scic_controller);
 }
}
