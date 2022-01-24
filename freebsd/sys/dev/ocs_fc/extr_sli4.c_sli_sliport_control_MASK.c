#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_INIT_PORT_DELAY_US ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_CONTROL ; 
 int SLI4_SLIPORT_CONTROL_IP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int32_t
FUNC4(sli4_t *sli4, uint32_t endian)
{
	uint32_t iter;
	int32_t rc;

	rc = -1;

	/* Initialize port, endian */
	FUNC3(sli4, SLI4_REG_SLIPORT_CONTROL, endian | SLI4_SLIPORT_CONTROL_IP);

	for (iter = 0; iter < 3000; iter ++) {
		FUNC1(SLI4_INIT_PORT_DELAY_US);
		if (FUNC2(sli4) == 1) {
			rc = 0;
			break;
		}
	}

	if (rc != 0) {
		FUNC0(sli4->os, "port failed to become ready after initialization\n");
	}

	return rc;
}