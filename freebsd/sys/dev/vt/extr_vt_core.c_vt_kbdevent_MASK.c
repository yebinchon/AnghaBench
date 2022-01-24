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
struct vt_device {int vd_keyboard; } ;
typedef  int /*<<< orphan*/  keyboard_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  Giant ; 
#define  KBDIO_KEYINPUT 129 
#define  KBDIO_UNLOADING 128 
 int NOKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vt_device*,int) ; 

__attribute__((used)) static int
FUNC5(keyboard_t *kbd, int event, void *arg)
{
	struct vt_device *vd = arg;
	int c;

	switch (event) {
	case KBDIO_KEYINPUT:
		break;
	case KBDIO_UNLOADING:
		FUNC2(&Giant);
		vd->vd_keyboard = -1;
		FUNC0(kbd, (void *)vd);
		FUNC3(&Giant);
		return (0);
	default:
		return (EINVAL);
	}

	while ((c = FUNC1(kbd, 0)) != NOKEY)
		FUNC4(kbd, vd, c);

	return (0);
}