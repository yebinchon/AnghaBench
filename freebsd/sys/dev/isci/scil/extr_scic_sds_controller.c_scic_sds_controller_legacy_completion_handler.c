
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ U32 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SMU_IMR_READ (int ) ;
 int SMU_IMR_WRITE (int *,int) ;
 int __debugbreak () ;
 int sci_base_object_get_logger (scalar_t__) ;
 int scic_sds_controller_polling_completion_handler (scalar_t__) ;
 int this_controler ;

__attribute__((used)) static
void scic_sds_controller_legacy_completion_handler(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T *this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_legacy_completion_handler(0x%d) enter\n",
      controller
   ));

   scic_sds_controller_polling_completion_handler(controller);

   SMU_IMR_WRITE(this_controller, 0x00000000);
}
