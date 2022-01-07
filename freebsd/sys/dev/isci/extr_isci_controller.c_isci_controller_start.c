
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_CONTROLLER {int scif_controller_handle; } ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int scic_controller_enable_interrupts (int ) ;
 int scif_controller_get_scic_handle (int ) ;
 int scif_controller_get_suggested_start_timeout (int ) ;
 int scif_controller_start (int ,int ) ;

void isci_controller_start(void *controller_handle)
{
 struct ISCI_CONTROLLER *controller =
     (struct ISCI_CONTROLLER *)controller_handle;
 SCI_CONTROLLER_HANDLE_T scif_controller_handle =
     controller->scif_controller_handle;

 scif_controller_start(scif_controller_handle,
     scif_controller_get_suggested_start_timeout(scif_controller_handle));

 scic_controller_enable_interrupts(
     scif_controller_get_scic_handle(controller->scif_controller_handle));
}
