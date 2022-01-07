
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_INFO (int ) ;
 int SCIC_LOG_OBJECT_COMPLETION_QUEUE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SMU_PCP_WRITE (int *,int ) ;
 int sci_base_object_get_logger (int *) ;

void scic_sds_controller_post_request(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U32 request
)
{
   SCIC_LOG_INFO((
      sci_base_object_get_logger(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_COMPLETION_QUEUE,
      "SCIC Controller 0x%08x post request 0x%08x\n",
      this_controller, request
   ));

   SMU_PCP_WRITE(this_controller, request);
}
