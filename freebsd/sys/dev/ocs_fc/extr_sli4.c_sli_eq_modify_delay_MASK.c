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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  os; TYPE_1__ bmbx; } ;
typedef  TYPE_2__ sli4_t ;
typedef  int /*<<< orphan*/  sli4_queue_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int32_t
FUNC5(sli4_t *sli4, sli4_queue_t *eq, uint32_t num_eq, uint32_t shift, uint32_t delay_mult)
{

	FUNC3(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE, eq, num_eq, shift, delay_mult);

	if (FUNC2(sli4)) {
		FUNC0(sli4->os, "bootstrap mailbox write fail (MODIFY EQ DELAY)\n");
		return -1;
	}
	if (FUNC4(sli4->bmbx.virt)) {
		FUNC1(sli4->os, "bad status MODIFY EQ DELAY\n");
		return -1;
	}

	return 0;
}