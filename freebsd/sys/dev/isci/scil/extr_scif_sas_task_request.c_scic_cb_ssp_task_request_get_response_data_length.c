
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {int associated_object; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
struct TYPE_7__ {TYPE_2__ parent; } ;
struct TYPE_8__ {TYPE_3__ parent; } ;
typedef TYPE_4__ SCIF_SAS_TASK_REQUEST_T ;


 int scif_cb_task_request_get_response_data_length (int ) ;

U32 scic_cb_ssp_task_request_get_response_data_length(
   void * scic_user_task_request
)
{
   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T*)
                                       scic_user_task_request;

   return scif_cb_task_request_get_response_data_length(
             fw_task->parent.parent.parent.associated_object
          );
}
