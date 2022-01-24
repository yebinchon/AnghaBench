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
 int EINVAL ; 
#define  PPB_BYTE 131 
#define  PPB_FORWARD_IDLE 130 
#define  PPB_NIBBLE 129 
#define  PPB_REVERSE_IDLE 128 
 int const PPB_REVERSE_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int nFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(device_t bus, int mode, char *buffer, int max, int *read)
{
	int error = 0, len = 0;
	int terminate_after_transfer = 1;
	int state;

	*read = len = 0;

	state = FUNC2(bus);

	switch (state) {
	case PPB_FORWARD_IDLE:
		if ((error = FUNC3(bus, mode, 0)))
			return (error);
		break;

	case PPB_REVERSE_IDLE:
		terminate_after_transfer = 0;
		break;

	default:
		FUNC5(bus);
		if ((error = FUNC3(bus, mode, 0)))
			return (error);
		break;
	}

	while ((len < max) && !(FUNC6(bus) & (nFAULT))) {

		FUNC4(bus, PPB_REVERSE_TRANSFER);

#ifdef DEBUG_1284
		printf("B");
#endif

		switch (mode) {
		case PPB_NIBBLE:
			/* read a byte, error means no more data */
			if (FUNC1(bus, buffer+len))
				goto end_while;
			break;
		case PPB_BYTE:
			if (FUNC0(bus, buffer+len))
				goto end_while;
			break;
		default:
			error = EINVAL;
			goto end_while;
		}
		len ++;
	}
end_while:

	if (!error)
		FUNC4(bus, PPB_REVERSE_IDLE);

	*read = len;

	if (terminate_after_transfer || error)
		FUNC5(bus);

	return (error);
}