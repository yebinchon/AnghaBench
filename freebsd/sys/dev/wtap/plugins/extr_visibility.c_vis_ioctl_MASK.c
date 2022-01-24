#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct wtap_hal {int /*<<< orphan*/  hal_md; } ;
struct TYPE_3__ {struct wtap_hal* wp_hal; } ;
struct visibility_plugin {TYPE_1__ base; } ;
struct thread {int dummy; } ;
struct link {int op; int id1; int id2; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
#define  VISIOCTLLINK 129 
#define  VISIOCTLOPEN 128 
 int /*<<< orphan*/  FUNC4 (struct visibility_plugin*,struct link*) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct visibility_plugin*,struct link*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int) ; 

int
FUNC9(struct cdev *sdev, u_long cmd, caddr_t data,
    int fflag, struct thread *td)
{
	struct visibility_plugin *vis_plugin =
	    (struct visibility_plugin *) sdev->si_drv1;
	struct wtap_hal *hal = vis_plugin->base.wp_hal;
	struct link l;
	int op;
	int error = 0;

	FUNC2(FUNC0(curthread->td_ucred));
	switch(cmd) {
	case VISIOCTLOPEN:
		op =  *(int *)data; 
		if(op == 0)
			FUNC6(hal->hal_md);
		else
			FUNC7(hal->hal_md);
		break;
	case VISIOCTLLINK:
		l = *(struct link *)data;
		if(l.op == 0)
			FUNC5(vis_plugin, &l);
		else
			FUNC4(vis_plugin, &l);
#if 0
		printf("op=%d, id1=%d, id2=%d\n", l.op, l.id1, l.id2);
#endif
		break;
	default:
		FUNC3("Unknown WTAP IOCTL\n");
		error = EINVAL;
	}

	FUNC1();
	return error;
}