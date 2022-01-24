#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

void FUNC2(
   SCI_CONTROLLER_HANDLE_T   controller,
   void                    * timer,
   U32                       milliseconds
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)
                                         FUNC0(controller);

   FUNC1(fw_controller, timer, milliseconds);
}