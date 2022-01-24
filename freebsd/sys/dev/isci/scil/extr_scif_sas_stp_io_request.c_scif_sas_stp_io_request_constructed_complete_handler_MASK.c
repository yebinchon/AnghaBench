#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ protocol; } ;
struct TYPE_7__ {scalar_t__ ncq_tag; TYPE_4__ sequence; } ;
struct TYPE_8__ {TYPE_1__ stp; int /*<<< orphan*/  device; } ;
struct TYPE_9__ {TYPE_2__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  TYPE_3__ SCIF_SAS_IO_REQUEST_T ;

/* Variables and functions */
 scalar_t__ SAT_PROTOCOL_FPDMA ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCIF_SAS_INVALID_NCQ_TAG ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_REQUEST_T * io_request
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T *) io_request;

   FUNC0(*(
      FUNC2(io_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_stp_io_request_constructed_complete_handler(0x%x) enter\n",
      io_request
   ));

   if (fw_io->parent.stp.sequence.protocol == SAT_PROTOCOL_FPDMA)
   {
      // For NCQ, we need to return the tag back to the free pool.
      if (fw_io->parent.stp.ncq_tag != SCIF_SAS_INVALID_NCQ_TAG)
         FUNC3(
            fw_io->parent.device, fw_io->parent.stp.ncq_tag
         );
   }

   FUNC1(&fw_io->parent.stp.sequence, fw_io, fw_io);

   return SCI_SUCCESS;
}