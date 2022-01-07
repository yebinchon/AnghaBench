
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int scic_sds_stp_common_request_get_object_size () ;

U32 scic_sds_stp_task_request_get_object_size(void)
{
   return scic_sds_stp_common_request_get_object_size();
}
