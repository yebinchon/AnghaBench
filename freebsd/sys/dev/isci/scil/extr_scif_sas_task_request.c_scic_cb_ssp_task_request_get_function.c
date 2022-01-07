
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SCIF_SAS_TASK_REQUEST_T ;


 int scif_sas_task_request_get_function (int *) ;

U8 scic_cb_ssp_task_request_get_function(
   void * scic_user_task_request
)
{
   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T*)
                                       scic_user_task_request;

   return scif_sas_task_request_get_function(fw_task);
}
