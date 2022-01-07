
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int SCU_TASK_CONTEXT_T ;
typedef int SCIC_SDS_REQUEST_T ;


 scalar_t__ CACHE_LINE_SIZE ;
 scalar_t__ scic_ssp_task_request_get_object_size () ;

__attribute__((used)) static
U32 scic_sds_ssp_task_request_get_object_size(void)
{
   return sizeof(SCIC_SDS_REQUEST_T)
          + scic_ssp_task_request_get_object_size()
          + sizeof(SCU_TASK_CONTEXT_T)
          + CACHE_LINE_SIZE;
}
