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
typedef  int u_int ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 

int
FUNC8(void)
{
	u_int i;
	int fd, rv, rv_client;

	switch (FUNC3()) {
	case 0:
		for (i = 1; i <= 2; ++i) {
			FUNC5("client #%u", i);
			fd = FUNC7();
			if (fd < 0)
				rv = -2;
			else {
				rv = FUNC0(1, fd);
				if (FUNC6(fd) < 0)
					rv = -2;
			}
			if (rv != 0)
				break;
		}
		FUNC2(rv);
		break;
	case 1:
		fd = FUNC7();
		if (fd < 0)
			rv = -2;
		else {
			rv = FUNC1(1, fd);
			if (rv == 0)
				rv = FUNC1(3, fd);
			rv_client = FUNC4();
			if (rv == 0 || (rv == -2 && rv_client != 0))
				rv = rv_client;
			if (FUNC6(fd) < 0)
				rv = -2;
		}
		break;
	default:
		rv = -2;
	}

	return (rv);
}