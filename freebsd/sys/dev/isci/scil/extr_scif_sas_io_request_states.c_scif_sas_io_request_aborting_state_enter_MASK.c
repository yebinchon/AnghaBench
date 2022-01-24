#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  core_object; int /*<<< orphan*/  status; TYPE_1__* device; } ;
struct TYPE_7__ {TYPE_3__ parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  domain; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_2__ SCIF_SAS_IO_REQUEST_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_ABORTING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  scif_sas_io_request_state_handler_table ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T *)object;

   FUNC0((
      FUNC2(fw_io),
      SCIF_LOG_OBJECT_IO_REQUEST | SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "Domain:0x%x Device:0x%x IORequest:0x%x terminating\n",
      fw_io->parent.device->domain, fw_io->parent.device, fw_io
   ));

   FUNC1(
      &fw_io->parent,
      scif_sas_io_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_ABORTING
   );

   fw_io->parent.status = FUNC3(
                             &fw_io->parent, fw_io->parent.core_object
                          );
}