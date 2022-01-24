#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
#define  WTAPIOCTLCRT 129 
#define  WTAPIOCTLDEL 128 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hal ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct cdev *dev, u_long cmd, caddr_t data,
    int fflag, struct thread *td)
{
	int error = 0;

	FUNC2(FUNC0(curthread->td_ucred));

	switch(cmd) {
	case WTAPIOCTLCRT:
		if(FUNC5(hal, *(int *)data))
			error = EINVAL;
		break;
	case WTAPIOCTLDEL:
		if(FUNC4(hal, *(int *)data))
			error = EINVAL;
		break;
	default:
		FUNC3("Unknown WTAP IOCTL\n");
		error = EINVAL;
	}

	FUNC1();
	return error;
}