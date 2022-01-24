#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_9__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_8__ {scalar_t__ fis_type; int status; } ;
struct TYPE_7__ {int /*<<< orphan*/  ready_substate_machine; void* not_ready_reason; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef  TYPE_2__ SATA_FIS_HEADER_T ;

/* Variables and functions */
 int ATA_STATUS_REG_ERROR_BIT ; 
 scalar_t__ SATA_FIS_TYPE_REGD2H ; 
 scalar_t__ SATA_FIS_TYPE_SETDEVBITS ; 
 void* SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR ; 
 scalar_t__ SCI_FAILURE ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   U32                        frame_index
)
{
   SCI_STATUS           status;
   SATA_FIS_HEADER_T  * frame_header;

   status = FUNC3(
      &(FUNC2(this_device)->uf_control),
      frame_index,
      (void **)&frame_header
   );

   if (status == SCI_SUCCESS)
   {
      if (
            (frame_header->fis_type == SATA_FIS_TYPE_SETDEVBITS)
         && (frame_header->status & ATA_STATUS_REG_ERROR_BIT)
         )
      {
         this_device->not_ready_reason =
            SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED;

         /** @todo Check sactive and complete associated IO if any. */

         FUNC0(
            &this_device->ready_substate_machine,
            SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR
         );
      }
      else if (
            (frame_header->fis_type == SATA_FIS_TYPE_REGD2H)
         && (frame_header->status & ATA_STATUS_REG_ERROR_BIT)
         )
      {
         // Some devices return D2H FIS when an NCQ error is detected.
         // Treat this like an SDB error FIS ready reason.
         this_device->not_ready_reason =
            SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED;

         FUNC0(
            &this_device->ready_substate_machine,
            SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR
         );
      }
      else
      {
         status = SCI_FAILURE;
      }

      FUNC1(
         FUNC2(this_device), frame_index
      );
   }

   return status;
}