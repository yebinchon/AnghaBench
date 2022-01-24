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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AUTOFEED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PPB_COMPATIBLE ; 
 int /*<<< orphan*/  PPB_FORWARD_IDLE ; 
 int /*<<< orphan*/  PPB_PERIPHERAL_TERMINATION ; 
 int /*<<< orphan*/  PPB_TIMEOUT ; 
 int SELECT ; 
 int SELECTIN ; 
 int STROBE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int nBUSY ; 
 int nINIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(device_t bus, int how)
{
	int error = 0;

#ifdef DEBUG_1284
	printf("t");
#endif

	FUNC3(bus, PPB_PERIPHERAL_TERMINATION);

	/* Event 22 - wait up to host response time (1s) */
	if ((error = FUNC1(bus, SELECT | nBUSY, 0))) {
		FUNC2(bus, PPB_TIMEOUT, 22);
		goto error;
	}

	/* Event 24 */
	FUNC5(bus, (nINIT | STROBE) & ~(AUTOFEED | SELECTIN));

	/* Event 25 - wait up to host response time (1s) */
	if ((error = FUNC1(bus, nBUSY, nBUSY))) {
		FUNC2(bus, PPB_TIMEOUT, 25);
		goto error;
	}

	/* Event 26 */
	FUNC5(bus, (SELECTIN | nINIT | STROBE) & ~(AUTOFEED));
	FUNC0(1);
	/* Event 27 */
	FUNC5(bus, (SELECTIN | nINIT) & ~(STROBE | AUTOFEED));

	/* Event 28 - wait up to host response time (1s) */
	if ((error = FUNC1(bus, nBUSY, 0))) {
		FUNC2(bus, PPB_TIMEOUT, 28);
		goto error;
	}

error:
	FUNC4(bus, PPB_COMPATIBLE);
	FUNC3(bus, PPB_FORWARD_IDLE);

	return (0);
}