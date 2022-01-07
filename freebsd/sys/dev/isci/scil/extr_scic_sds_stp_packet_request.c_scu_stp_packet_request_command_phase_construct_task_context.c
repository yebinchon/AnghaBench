
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct STP_TASK_CONTEXT {int dummy; } ;
typedef int U8 ;
typedef int U32 ;
struct TYPE_17__ {int user_request; TYPE_10__* command_buffer; } ;
struct TYPE_13__ {int device_preferred_cdb_length; } ;
struct TYPE_14__ {TYPE_2__ packet; } ;
struct TYPE_16__ {TYPE_3__ type; } ;
struct TYPE_11__ {int fis_type; } ;
struct TYPE_12__ {TYPE_10__ stp; } ;
struct TYPE_15__ {int sata_direction; int ssp_command_iu_length; int task_phase; scalar_t__ transfer_length_bytes; scalar_t__ stp_retry_count; TYPE_1__ type; int task_type; } ;
typedef TYPE_4__ SCU_TASK_CONTEXT_T ;
typedef TYPE_5__ SCIC_SDS_STP_REQUEST_T ;
typedef TYPE_6__ SCIC_SDS_REQUEST_T ;
typedef int SATA_FIS_REG_H2D_T ;


 int MAX (int,int ) ;
 int SATA_FIS_TYPE_DATA ;
 scalar_t__ SCI_IO_REQUEST_DATA_OUT ;
 scalar_t__ SCSI_FIXED_SENSE_DATA_BASE_LENGTH ;
 int SCU_TASK_TYPE_PACKET_DMA_IN ;
 int SCU_TASK_TYPE_PACKET_DMA_OUT ;
 int memcpy (int *,void*,int) ;
 int memset (TYPE_10__*,int ,int) ;
 scalar_t__ scic_cb_io_request_get_data_direction (int ) ;
 scalar_t__ scic_cb_io_request_get_transfer_length (int ) ;
 scalar_t__ scic_cb_request_is_initial_construction (int ) ;
 void* scic_cb_stp_packet_io_request_get_cdb_address (int ) ;
 int scic_cb_stp_packet_io_request_get_cdb_length (int ) ;
 int scic_sds_stp_packet_internal_request_sense_build_sgl (TYPE_6__*) ;

void scu_stp_packet_request_command_phase_construct_task_context(
   SCIC_SDS_REQUEST_T * this_request,
   SCU_TASK_CONTEXT_T * task_context
)
{
   void * atapi_cdb;
   U32 atapi_cdb_length;
   SCIC_SDS_STP_REQUEST_T * stp_request = (SCIC_SDS_STP_REQUEST_T *)this_request;



   if ( scic_cb_io_request_get_data_direction(this_request->user_request)
           == SCI_IO_REQUEST_DATA_OUT )
   {
      task_context->task_type = SCU_TASK_TYPE_PACKET_DMA_OUT;
      task_context->sata_direction = 0;
   }
   else
   {
      task_context->task_type = SCU_TASK_TYPE_PACKET_DMA_IN;
      task_context->sata_direction = 1;
   }


   memset(&(task_context->type.stp), 0, sizeof(struct STP_TASK_CONTEXT));
   task_context->type.stp.fis_type = SATA_FIS_TYPE_DATA;



   memset(this_request->command_buffer, 0, sizeof(SATA_FIS_REG_H2D_T));

   atapi_cdb =
      scic_cb_stp_packet_io_request_get_cdb_address(this_request->user_request);

   atapi_cdb_length =
      scic_cb_stp_packet_io_request_get_cdb_length(this_request->user_request);

   memcpy(((U8 *)this_request->command_buffer+sizeof(U32)), atapi_cdb, atapi_cdb_length);

   atapi_cdb_length =
      MAX(atapi_cdb_length, stp_request->type.packet.device_preferred_cdb_length);

   task_context->ssp_command_iu_length =
      ((atapi_cdb_length % 4) == 0) ?
       (atapi_cdb_length / 4) : ((atapi_cdb_length / 4) + 1);


   task_context->task_phase = 0x1;


   task_context->stp_retry_count = 0;

   if (scic_cb_request_is_initial_construction(this_request->user_request))
   {

      task_context->transfer_length_bytes =
         scic_cb_io_request_get_transfer_length(this_request->user_request);



   }
   else
   {

      task_context->transfer_length_bytes = (SCSI_FIXED_SENSE_DATA_BASE_LENGTH + 2);

      scic_sds_stp_packet_internal_request_sense_build_sgl(this_request);
   }
}
