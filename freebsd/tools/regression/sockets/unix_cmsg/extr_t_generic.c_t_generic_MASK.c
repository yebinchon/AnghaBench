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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 

int
FUNC5(int (*client_func)(int), int (*server_func)(int))
{
	int fd, rv, rv_client;

	switch (FUNC1()) {
	case 0:
		fd = FUNC4();
		if (fd < 0)
			rv = -2;
		else {
			rv = client_func(fd);
			if (FUNC3(fd) < 0)
				rv = -2;
		}
		FUNC0(rv);
		break;
	case 1:
		fd = FUNC4();
		if (fd < 0)
			rv = -2;
		else {
			rv = server_func(fd);
			rv_client = FUNC2();
			if (rv == 0 || (rv == -2 && rv_client != 0))
				rv = rv_client;
			if (FUNC3(fd) < 0)
				rv = -2;
		}
		break;
	default:
		rv = -2;
	}
	return (rv);
}