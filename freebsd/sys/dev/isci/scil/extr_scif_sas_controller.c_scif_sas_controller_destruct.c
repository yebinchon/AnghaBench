
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_SHUTDOWN ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;

void scif_sas_controller_destruct(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
      "scif_sas_controller_destruct(0x%x) enter\n",
      fw_controller
   ));
}
