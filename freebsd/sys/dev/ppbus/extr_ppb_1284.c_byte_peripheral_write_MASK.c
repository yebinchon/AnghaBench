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
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  PPB_FOREVER ; 
 int /*<<< orphan*/  PPB_INTR ; 
 int /*<<< orphan*/  PPB_PERIPHERAL_IDLE ; 
 int /*<<< orphan*/  PPB_PERIPHERAL_TRANSFER ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  nBUSY ; 
 char nINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(device_t bus, char *buffer, int len, int *sent)
{
	int error = 0, i;
	char r;

	FUNC1(bus, PPB_PERIPHERAL_TRANSFER);

	/* wait forever, the remote host is master and should initiate
	 * termination
	 */
	for (i=0; i<len; i++) {
		/* force remote nFAULT low to release the remote waiting
		 * process, if any
		 */
		r = FUNC3(bus);
		FUNC4(bus, r & ~nINIT);

#ifdef DEBUG_1284
		printf("y");
#endif
		/* Event 7 */
		error = FUNC2(bus, PPB_FOREVER, nBUSY, nBUSY,
					PPB_INTR);

		if (error && error != EWOULDBLOCK)
			goto error;

#ifdef DEBUG_1284
		printf("b");
#endif
		if ((error = FUNC0(bus, buffer+i, (i == len-1))))
			goto error;
	}
error:
	if (!error)
		FUNC1(bus, PPB_PERIPHERAL_IDLE);

	*sent = i;
	return (error);
}