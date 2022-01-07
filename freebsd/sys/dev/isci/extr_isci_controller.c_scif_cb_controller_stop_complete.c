
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_CONTROLLER {int is_started; } ;
typedef int SCI_STATUS ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int FALSE ;
 scalar_t__ sci_object_get_association (int ) ;

void scif_cb_controller_stop_complete(SCI_CONTROLLER_HANDLE_T controller,
    SCI_STATUS completion_status)
{
 struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
     sci_object_get_association(controller);

 isci_controller->is_started = FALSE;
}
