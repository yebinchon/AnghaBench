#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  phys; } ;
struct TYPE_6__ {TYPE_5__ bmbx; int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  SLI4_BMBX_DELAY_US ; 
 int /*<<< orphan*/  SLI4_BMBX_TIMEOUT_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLI4_REG_BMBX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC6(sli4_t *sli4)
{
	uint32_t	val = 0;

	/* write buffer location to bootstrap mailbox register */
	FUNC2(&sli4->bmbx, OCS_DMASYNC_PREWRITE);
	val = FUNC0(sli4->bmbx.phys);
	FUNC5(sli4, SLI4_REG_BMBX, val);

	if (FUNC4(sli4, SLI4_BMBX_DELAY_US)) {
		FUNC3(sli4->os, "BMBX WRITE_HI failed\n");
		return -1;
	}
	val = FUNC1(sli4->bmbx.phys);
	FUNC5(sli4, SLI4_REG_BMBX, val);

	/* wait for SLI Port to set ready bit */
	return FUNC4(sli4, SLI4_BMBX_TIMEOUT_MSEC/*XXX*/);
}