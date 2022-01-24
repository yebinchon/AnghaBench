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
typedef  scalar_t__ U32 ;
struct TYPE_8__ {int /*<<< orphan*/  sequence; } ;
struct TYPE_9__ {TYPE_1__ stp; } ;
struct TYPE_10__ {TYPE_2__ parent; } ;
typedef  scalar_t__ SCI_IO_STATUS ;
typedef  int /*<<< orphan*/  SCI_IO_REQUEST_HANDLE_T ;
typedef  TYPE_3__ SCIF_SAS_IO_REQUEST_T ;

/* Variables and functions */
 scalar_t__ SCI_IO_FAILURE_RESPONSE_VALID ; 
 scalar_t__ SCI_IO_SUCCESS_IO_DONE_EARLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

U32 FUNC4(
   SCIF_SAS_IO_REQUEST_T * fw_io
)
{
   SCI_IO_REQUEST_HANDLE_T scic_io = FUNC3(fw_io);
   SCI_IO_STATUS io_status = FUNC2 (scic_io);
   U32 actual_data_length;

   if (io_status == SCI_IO_FAILURE_RESPONSE_VALID)
       actual_data_length = 0;
   else if (io_status == SCI_IO_SUCCESS_IO_DONE_EARLY)
   {
      actual_data_length = FUNC0(
         &fw_io->parent.stp.sequence, fw_io, fw_io);

      if (actual_data_length == 0)
         actual_data_length =
            FUNC1(scic_io);
   }
   else
      actual_data_length =
         FUNC1(scic_io);

   return actual_data_length;
}