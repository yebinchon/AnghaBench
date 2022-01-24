#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
struct TYPE_7__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_8__ {int sat_protocol; TYPE_1__ parent; int /*<<< orphan*/  user_request; } ;
typedef  scalar_t__ SCI_TASK_REQUEST_HANDLE_T ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  SAT_PROTOCOL_ATA_HARD_RESET 130 
#define  SAT_PROTOCOL_PIO_DATA_IN 129 
#define  SAT_PROTOCOL_SOFT_RESET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_CONSTRUCTED ; 
 scalar_t__ SCI_FAILURE ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

SCI_STATUS FUNC8(
   SCI_TASK_REQUEST_HANDLE_T scic_task_request
)
{
   SCI_STATUS           status;
   SCIC_SDS_REQUEST_T * this_request;
   U8                   sat_protocol;

   this_request = (SCIC_SDS_REQUEST_T *)scic_task_request;

   FUNC1((
      FUNC2(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_task_request_construct_sata(0x%x) enter\n",
      this_request
   ));

   sat_protocol =
      FUNC4(this_request->user_request);

   this_request->sat_protocol = sat_protocol;

   switch (sat_protocol)
   {
   case SAT_PROTOCOL_ATA_HARD_RESET:
   case SAT_PROTOCOL_SOFT_RESET:
      status = FUNC7(this_request);
      break;

   case SAT_PROTOCOL_PIO_DATA_IN:
      status = FUNC6(this_request, sat_protocol, FALSE);
      break;

   default:
      FUNC0((
         FUNC2(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x received un-handled SAT Protocl %d.\n",
         this_request, sat_protocol
      ));

      status = SCI_FAILURE;
      break;
   }

   if (status == SCI_SUCCESS)
   {
      FUNC5(this_request);

      FUNC3(
         &this_request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_CONSTRUCTED
      );
   }

   return status;
}