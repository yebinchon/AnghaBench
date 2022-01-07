
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 scalar_t__ sci_object_get_association (int ) ;
 int scif_cb_timer_start (int *,void*,int ) ;

void scic_cb_timer_start(
   SCI_CONTROLLER_HANDLE_T controller,
   void * timer,
   U32 milliseconds
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)
                                         sci_object_get_association(controller);

   scif_cb_timer_start(fw_controller, timer, milliseconds);
}
