
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_16__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int U32 ;
struct TYPE_30__ {int parent; } ;
struct TYPE_28__ {int (* continue_io_handler ) (int *,int *,int *) ;} ;
struct TYPE_29__ {TYPE_7__ parent; } ;
struct TYPE_26__ {int fis_type; } ;
struct TYPE_27__ {TYPE_5__ stp; } ;
struct TYPE_23__ {scalar_t__ sgl_set; TYPE_1__* sgl_pair; } ;
struct TYPE_24__ {TYPE_2__ request_current; } ;
struct TYPE_25__ {TYPE_3__ pio; } ;
struct TYPE_18__ {int address_lower; int address_upper; } ;
struct TYPE_22__ {TYPE_11__ B; TYPE_11__ A; } ;
struct TYPE_21__ {int parent; TYPE_8__* state_handlers; } ;
struct TYPE_20__ {int parent; TYPE_9__* target_device; TYPE_16__* owning_controller; int io_tag; } ;
struct TYPE_19__ {TYPE_4__ type; } ;
struct TYPE_17__ {TYPE_6__ type; int transfer_length_bytes; int command_iu_lower; int command_iu_upper; } ;
typedef TYPE_10__ SCU_TASK_CONTEXT_T ;
typedef TYPE_11__ SCU_SGL_ELEMENT_T ;
typedef int SCI_STATUS ;
typedef TYPE_12__ SCIC_SDS_STP_REQUEST_T ;
typedef TYPE_13__ SCIC_SDS_REQUEST_T ;


 int SATA_FIS_TYPE_DATA ;
 int SCI_SUCCESS ;
 scalar_t__ SCU_SGL_ELEMENT_PAIR_A ;
 TYPE_10__* scic_sds_controller_get_task_context_buffer (TYPE_16__*,int ) ;
 int stub1 (int *,int *,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_request_pio_data_out_trasmit_data_frame (
   SCIC_SDS_REQUEST_T * this_request,
   U32 length
)
{
   SCI_STATUS status = SCI_SUCCESS;
   SCU_SGL_ELEMENT_T * current_sgl;
   SCIC_SDS_STP_REQUEST_T * this_sds_stp_request = (SCIC_SDS_STP_REQUEST_T *)this_request;



   SCU_TASK_CONTEXT_T * task_context = scic_sds_controller_get_task_context_buffer(
                                          this_request->owning_controller,
                                          this_request->io_tag
                                       );

   if (this_sds_stp_request->type.pio.request_current.sgl_set == SCU_SGL_ELEMENT_PAIR_A)
   {
      current_sgl = &(this_sds_stp_request->type.pio.request_current.sgl_pair->A);
   }
   else
   {
      current_sgl = &(this_sds_stp_request->type.pio.request_current.sgl_pair->B);
   }


   task_context->command_iu_upper = current_sgl->address_upper;
   task_context->command_iu_lower = current_sgl->address_lower;
   task_context->transfer_length_bytes = length;
   task_context->type.stp.fis_type = SATA_FIS_TYPE_DATA;


   status = this_request->owning_controller->state_handlers->parent.continue_io_handler(
      &this_request->owning_controller->parent,
      &this_request->target_device->parent,
      &this_request->parent
   );

   return status;

}
