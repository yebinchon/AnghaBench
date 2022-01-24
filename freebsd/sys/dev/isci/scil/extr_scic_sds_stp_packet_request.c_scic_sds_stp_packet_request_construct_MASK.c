#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int features; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {TYPE_1__ parent; int /*<<< orphan*/  started_substate_machine; int /*<<< orphan*/  task_context_buffer; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_STP_REQUEST_T ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;
typedef  TYPE_3__ SATA_FIS_REG_H2D_T ;

/* Variables and functions */
 int ATA_PACKET_FEATURE_DMA ; 
 int /*<<< orphan*/  SCIC_SDS_STP_PACKET_REQUEST_STARTED_PACKET_PHASE_AWAIT_TC_COMPLETION_SUBSTATE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  scic_sds_stp_packet_request_started_substate_table ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

SCI_STATUS FUNC4(
   SCIC_SDS_REQUEST_T *this_request
)
{
   SATA_FIS_REG_H2D_T * h2d_fis =
      FUNC2(
         this_request
      );

   // Work around, we currently only support PACKET DMA protocol, so we
   // need to make change to Packet Fis features field.
   h2d_fis->features = h2d_fis->features | ATA_PACKET_FEATURE_DMA;

   FUNC1(this_request);

   // Build the Packet Fis task context structure
   FUNC3(
      (SCIC_SDS_STP_REQUEST_T*) this_request,
      this_request->task_context_buffer
   );

   FUNC0(
      &this_request->started_substate_machine,
      &this_request->parent.parent,
      scic_sds_stp_packet_request_started_substate_table,
      SCIC_SDS_STP_PACKET_REQUEST_STARTED_PACKET_PHASE_AWAIT_TC_COMPLETION_SUBSTATE
   );

   return SCI_SUCCESS;
}