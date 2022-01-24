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
struct uio {unsigned int uio_resid; } ;
struct cdev {int dummy; } ;
typedef  unsigned int ssize_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 unsigned int MOUSE_MSC_PACKETSIZE ; 
 unsigned int MOUSE_SYS_PACKETSIZE ; 
 int O_NONBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct uio*,unsigned int) ; 
 int sysmouse_level ; 
 int /*<<< orphan*/  sysmouse_lock ; 
 int /*<<< orphan*/  sysmouse_sleep ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, struct uio *uio, int ioflag)
{
	unsigned int length;
	ssize_t oresid;
	int error = 0;

	oresid = uio->uio_resid;

	FUNC1(&sysmouse_lock);
	length = sysmouse_level >= 1 ? MOUSE_SYS_PACKETSIZE :
	    MOUSE_MSC_PACKETSIZE;

	while (uio->uio_resid >= length) {
		error = FUNC3(uio, length);
		if (error == 0) {
			/* Process the next frame. */
			continue;
		} else if (error != EWOULDBLOCK) {
			/* Error (e.g. EFAULT). */
			break;
		} else {
			/* Block. */
			if (oresid != uio->uio_resid || ioflag & O_NONBLOCK)
				break;
			error = FUNC0(&sysmouse_sleep, &sysmouse_lock);
			if (error != 0)
				break;
		}
	}
	FUNC2(&sysmouse_lock);

	return (error);
}