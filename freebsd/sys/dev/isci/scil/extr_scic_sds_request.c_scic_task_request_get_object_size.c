
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int MAX (int ,int ) ;
 int scic_sds_ssp_task_request_get_object_size () ;
 int scic_sds_stp_task_request_get_object_size () ;

U32 scic_task_request_get_object_size(void)
{
   U32 ssp_task_request_size;
   U32 stp_task_request_size;

   ssp_task_request_size = scic_sds_ssp_task_request_get_object_size();
   stp_task_request_size = scic_sds_stp_task_request_get_object_size();

   return MAX(ssp_task_request_size, stp_task_request_size);
}
