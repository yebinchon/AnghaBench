#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; TYPE_1__* state_handlers; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* abort_handler ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ SCIF_SAS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(
   void * fw_internal_io
)
{
   SCIF_SAS_REQUEST_T * fw_request = (SCIF_SAS_REQUEST_T *)fw_internal_io;

   FUNC0((
      FUNC1(fw_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_internal_io_request_timeout_handler(0x%x) enter\n",
      fw_internal_io
   ));

   fw_request->state_handlers->abort_handler(&fw_request->parent);
}