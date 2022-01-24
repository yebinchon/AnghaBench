#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct STP_TASK_CONTEXT {int dummy; } ;
typedef  int /*<<< orphan*/  U8 ;
typedef  int U32 ;
struct TYPE_17__ {int /*<<< orphan*/  user_request; TYPE_10__* command_buffer; } ;
struct TYPE_13__ {int /*<<< orphan*/  device_preferred_cdb_length; } ;
struct TYPE_14__ {TYPE_2__ packet; } ;
struct TYPE_16__ {TYPE_3__ type; } ;
struct TYPE_11__ {int /*<<< orphan*/  fis_type; } ;
struct TYPE_12__ {TYPE_10__ stp; } ;
struct TYPE_15__ {int sata_direction; int ssp_command_iu_length; int task_phase; scalar_t__ transfer_length_bytes; scalar_t__ stp_retry_count; TYPE_1__ type; int /*<<< orphan*/  task_type; } ;
typedef  TYPE_4__ SCU_TASK_CONTEXT_T ;
typedef  TYPE_5__ SCIC_SDS_STP_REQUEST_T ;
typedef  TYPE_6__ SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  SATA_FIS_REG_H2D_T ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SATA_FIS_TYPE_DATA ; 
 scalar_t__ SCI_IO_REQUEST_DATA_OUT ; 
 scalar_t__ SCSI_FIXED_SENSE_DATA_BASE_LENGTH ; 
 int /*<<< orphan*/  SCU_TASK_TYPE_PACKET_DMA_IN ; 
 int /*<<< orphan*/  SCU_TASK_TYPE_PACKET_DMA_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 

void FUNC9(
   SCIC_SDS_REQUEST_T * this_request,
   SCU_TASK_CONTEXT_T * task_context
)
{
   void * atapi_cdb;
   U32 atapi_cdb_length;
   SCIC_SDS_STP_REQUEST_T * stp_request = (SCIC_SDS_STP_REQUEST_T *)this_request;

   // reference: SSTL 1.13.4.2
   // task_type, sata_direction
   if ( FUNC3(this_request->user_request)
           == SCI_IO_REQUEST_DATA_OUT )
   {
      task_context->task_type = SCU_TASK_TYPE_PACKET_DMA_OUT;
      task_context->sata_direction = 0;
   }
   else // todo: for NO_DATA command, we need to send out raw frame.
   {
      task_context->task_type = SCU_TASK_TYPE_PACKET_DMA_IN;
      task_context->sata_direction = 1;
   }

   // sata header
   FUNC2(&(task_context->type.stp), 0, sizeof(struct STP_TASK_CONTEXT));
   task_context->type.stp.fis_type = SATA_FIS_TYPE_DATA;

   // Copy in the command IU with CDB so that the commandIU address doesn't
   // change.
   FUNC2(this_request->command_buffer, 0, sizeof(SATA_FIS_REG_H2D_T));

   atapi_cdb =
      FUNC6(this_request->user_request);

   atapi_cdb_length =
      FUNC7(this_request->user_request);

   FUNC1(((U8 *)this_request->command_buffer+sizeof(U32)), atapi_cdb, atapi_cdb_length);

   atapi_cdb_length =
      FUNC0(atapi_cdb_length, stp_request->type.packet.device_preferred_cdb_length);

   task_context->ssp_command_iu_length =
      ((atapi_cdb_length % 4) == 0) ?
       (atapi_cdb_length / 4) : ((atapi_cdb_length / 4) + 1);

   // task phase is set to TX_CMD
   task_context->task_phase = 0x1;

   // retry counter
   task_context->stp_retry_count = 0;

   if (FUNC5(this_request->user_request))
   {
      // data transfer size.
      task_context->transfer_length_bytes =
         FUNC4(this_request->user_request);

      // sgls were already built when request was constructed, so don't need to
      //  to do it here
   }
   else
   {
      // data transfer size, need to be 4 bytes aligned.
      task_context->transfer_length_bytes = (SCSI_FIXED_SENSE_DATA_BASE_LENGTH + 2);

      FUNC8(this_request);
   }
}