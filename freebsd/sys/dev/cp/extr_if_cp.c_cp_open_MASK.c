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
typedef  int /*<<< orphan*/  drv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int ENXIO ; 
 int NBRD ; 
 int NCHAN ; 
 int /*<<< orphan*/ ** channel ; 
 int FUNC1 (struct cdev*) ; 

__attribute__((used)) static int FUNC2 (struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	int unit = FUNC1 (dev);
	drv_t *d;

	if (unit >= NBRD*NCHAN || ! (d = channel[unit]))
		return ENXIO;
	FUNC0 (d, ("cp_open\n"));
	return 0;
}