
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_6__ {scalar_t__ command_buffer; } ;
struct TYPE_5__ {int task_tag; int task_function; int lun_lower; scalar_t__ lun_upper; } ;
typedef TYPE_1__ SCI_SSP_TASK_IU_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int scic_cb_ssp_task_request_get_function (void*) ;
 int scic_cb_ssp_task_request_get_io_tag_to_manage (void*) ;
 int scic_cb_ssp_task_request_get_lun (void*) ;
 void* scic_sds_request_get_user_request (TYPE_2__*) ;

__attribute__((used)) static
void scic_sds_task_request_build_ssp_task_iu(
   SCIC_SDS_REQUEST_T *this_request
)
{
   SCI_SSP_TASK_IU_T *command_frame;
   void *os_handle;

   command_frame =
      (SCI_SSP_TASK_IU_T *)this_request->command_buffer;

   os_handle = scic_sds_request_get_user_request(this_request);

   command_frame->lun_upper = 0;
   command_frame->lun_lower = scic_cb_ssp_task_request_get_lun(os_handle);

   ((U32 *)command_frame)[2] = 0;

   command_frame->task_function =
      scic_cb_ssp_task_request_get_function(os_handle);
   command_frame->task_tag =
      scic_cb_ssp_task_request_get_io_tag_to_manage(os_handle);
}
