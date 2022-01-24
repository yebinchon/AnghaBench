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
struct thread {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int MOUSE_SYS_PACKETSIZE ; 
 int /*<<< orphan*/  M_SYSMOUSE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SYSMOUSE_MAXFRAMES ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sysmouse_buffer ; 
 scalar_t__ sysmouse_length ; 
 scalar_t__ sysmouse_level ; 
 int /*<<< orphan*/  sysmouse_lock ; 
 scalar_t__ sysmouse_start ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	void *buf;

	buf = FUNC1(MOUSE_SYS_PACKETSIZE * SYSMOUSE_MAXFRAMES,
	    M_SYSMOUSE, M_WAITOK);
	FUNC2(&sysmouse_lock);
	if (sysmouse_buffer == NULL) {
		sysmouse_buffer = buf;
		sysmouse_start = sysmouse_length = 0;
		sysmouse_level = 0;
	} else {
		FUNC0(buf, M_SYSMOUSE);
	}
	FUNC3(&sysmouse_lock);

	return (0);
}