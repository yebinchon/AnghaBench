
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ task_context_buffer; scalar_t__ response_buffer; } ;
struct TYPE_12__ {int * data; } ;
struct TYPE_9__ {scalar_t__ address_modifier; int length; int address_lower; int address_upper; } ;
struct TYPE_11__ {int B; TYPE_1__ A; } ;
struct TYPE_10__ {int transfer_length_bytes; TYPE_3__ sgl_pair_ab; } ;
typedef TYPE_2__ SCU_TASK_CONTEXT_T ;
typedef TYPE_3__ SCU_SGL_ELEMENT_PAIR_T ;
typedef TYPE_4__ SCI_SSP_RESPONSE_IU_T ;
typedef int SCI_PHYSICAL_ADDRESS ;
typedef TYPE_5__ SCIC_SDS_REQUEST_T ;


 int SCU_SGL_ZERO (int ) ;
 int sci_cb_physical_address_lower (int ) ;
 int sci_cb_physical_address_upper (int ) ;
 int scic_cb_io_request_get_physical_address (int ,TYPE_5__*,char*,int *) ;
 int scic_sds_request_get_controller (TYPE_5__*) ;

void scic_sds_stp_packet_internal_request_sense_build_sgl(
   SCIC_SDS_REQUEST_T * this_request
)
{
   void *sge;
   SCU_SGL_ELEMENT_PAIR_T *scu_sgl_list = ((void*)0);
   SCU_TASK_CONTEXT_T *task_context;
   SCI_PHYSICAL_ADDRESS physical_address;

   SCI_SSP_RESPONSE_IU_T * rsp_iu =
      (SCI_SSP_RESPONSE_IU_T *)this_request->response_buffer;
   sge = (void*)&rsp_iu->data[0];

   task_context = (SCU_TASK_CONTEXT_T *)this_request->task_context_buffer;
   scu_sgl_list = &task_context->sgl_pair_ab;

   scic_cb_io_request_get_physical_address(
      scic_sds_request_get_controller(this_request),
      this_request,
      ((char *)sge),
      &physical_address
   );

   scu_sgl_list->A.address_upper = sci_cb_physical_address_upper(physical_address);
   scu_sgl_list->A.address_lower = sci_cb_physical_address_lower(physical_address);
   scu_sgl_list->A.length = task_context->transfer_length_bytes;
   scu_sgl_list->A.address_modifier = 0;

   SCU_SGL_ZERO(scu_sgl_list->B);
}
