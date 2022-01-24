#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  os; TYPE_1__ bmbx; } ;
typedef  TYPE_2__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC5(sli4_t *sli4)
{

	if (FUNC3(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE)) {
		if (FUNC2(sli4)) {
			FUNC0(sli4->os, "bootstrap mailbox write fail (COM_FUNC_RESET)\n");
			return -1;
		}
		if (FUNC4(sli4->bmbx.virt)) {
			FUNC1(sli4->os, "bad status COM_FUNC_RESET\n");
			return -1;
		}
	} else {
		FUNC1(sli4->os, "bad COM_FUNC_RESET write\n");
		return -1;
	}

	return 0;
}