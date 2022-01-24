#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 int /*<<< orphan*/  SLI4_INIT_PORT_DELAY_US ; 
 int SLI4_PORT_STATUS_DIP ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_STATUS ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int32_t FUNC5(sli4_t *sli4)
{
	uint32_t val;
	uint32_t ready;

	if (SLI4_IF_TYPE_LANCER_FC_ETH != FUNC2(sli4)) {
		FUNC1(sli4->os, "Function only supported for I/F type 2");
		return -1;
	}

	/* If the chip is not ready, then there cannot be a dump */
	ready = FUNC4(sli4, SLI4_INIT_PORT_DELAY_US);
	if (!ready) {
		return 0;
	}

	val = FUNC3(sli4, SLI4_REG_SLIPORT_STATUS);
	if (UINT32_MAX == val) {
		FUNC0(sli4->os, "error reading SLIPORT_STATUS\n");
		return -1;
	} else {
		return ((val & SLI4_PORT_STATUS_DIP) ? 1 : 0);
	}
}