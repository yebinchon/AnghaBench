#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * internal_io_timer; } ;
typedef  TYPE_1__ SCIF_SAS_INTERNAL_IO_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC2(
   SCIF_SAS_CONTROLLER_T          * fw_controller,
   SCIF_SAS_INTERNAL_IO_REQUEST_T * fw_internal_io
)
{
   if (fw_internal_io->internal_io_timer != NULL)
   {
      FUNC0(fw_controller, fw_internal_io->internal_io_timer);
      fw_internal_io->internal_io_timer = NULL;
   }
   FUNC1(fw_controller, fw_internal_io);
}