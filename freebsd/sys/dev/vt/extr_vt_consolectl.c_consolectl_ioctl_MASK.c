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
typedef  int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  mouse_info_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
#define  CONS_GETVERS 129 
#define  CONS_MOUSECTL 128 
 int ENOIOCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{

	switch (cmd) {
	case CONS_GETVERS:
		*(int*)data = 0x200;
		return 0;
	case CONS_MOUSECTL: {
		mouse_info_t *mi = (mouse_info_t*)data;

		FUNC3(mi);
		return (0);
	}
	default:
#ifdef VT_CONSOLECTL_DEBUG
		printf("consolectl: unknown ioctl: %c:%lx\n",
		    (char)IOCGROUP(cmd), IOCBASECMD(cmd));
#endif
		return (ENOIOCTL);
	}
}