
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_TIMER_CALLBACK_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 scalar_t__ sci_object_get_association (int ) ;
 void* scif_cb_timer_create (int *,int ,void*) ;

void * scic_cb_timer_create(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_TIMER_CALLBACK_T timer_callback,
   void * cookie
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)
                                         sci_object_get_association(controller);

   return scif_cb_timer_create(fw_controller, timer_callback, cookie);
}
