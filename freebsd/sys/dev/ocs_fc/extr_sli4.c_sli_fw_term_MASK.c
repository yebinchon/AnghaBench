#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  virt; } ;
struct TYPE_10__ {scalar_t__ if_type; int /*<<< orphan*/  os; TYPE_1__ bmbx; } ;
typedef  TYPE_2__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_BMBX_DELAY_US ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ; 
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_VF ; 
 int /*<<< orphan*/  SLI4_SLIPORT_CONTROL_BIG_ENDIAN ; 
 int /*<<< orphan*/  SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC8(sli4_t *sli4)
{
	uint32_t endian;

	if (sli4->if_type == SLI4_IF_TYPE_BE3_SKH_PF ||
	    sli4->if_type == SLI4_IF_TYPE_BE3_SKH_VF) {
		/* No SLIPORT_CONTROL register so use command sequence instead */
		if (FUNC4(sli4, SLI4_BMBX_DELAY_US)) {
			FUNC0(sli4->os, "bootstrap mailbox not ready\n");
			return -1;
		}

		if (FUNC6(sli4)) {
			FUNC1(sli4->os, "bad COM_FUNC_RESET write\n");
			return -1;
		}

		if (FUNC5(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE)) {
			if (FUNC3(sli4)) {
				FUNC0(sli4->os, "bootstrap mailbox write fail (FW_DEINIT)\n");
				return -1;
			}
		} else {
			FUNC2(sli4->os, "bad FW_DEINIT write\n");
			return -1;
		}
	} else {
#if BYTE_ORDER == LITTLE_ENDIAN
		endian = SLI4_SLIPORT_CONTROL_LITTLE_ENDIAN;
#else
		endian = SLI4_SLIPORT_CONTROL_BIG_ENDIAN;
#endif
		/* type 2 etc. use SLIPORT_CONTROL to initialize port */
		FUNC7(sli4, endian);
	}
	return 0;
}