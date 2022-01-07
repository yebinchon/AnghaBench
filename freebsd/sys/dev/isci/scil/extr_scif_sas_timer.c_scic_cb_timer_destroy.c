
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 scalar_t__ sci_object_get_association (int ) ;
 int scif_cb_timer_destroy (int *,void*) ;

void scic_cb_timer_destroy(
   SCI_CONTROLLER_HANDLE_T controller,
   void * timer
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)
                                         sci_object_get_association(controller);
   if (timer != ((void*)0))
   {
      scif_cb_timer_destroy(fw_controller, timer);
      timer = ((void*)0);
   }
}
