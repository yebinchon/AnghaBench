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
struct thread {int dummy; } ;
struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int (* d_poll ) (struct cdev*,int,struct thread*) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 struct cdevsw* FUNC0 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cdev*,int,struct thread*) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int events, struct thread *td)
{
	struct cdevsw *dsw;
	int ref, retval;

	dsw = FUNC0(dev, &ref);
	if (dsw == NULL)
		return (ENXIO);
	FUNC2(&Giant);
	retval = dsw->d_gianttrick->d_poll(dev, events, td);
	FUNC3(&Giant);
	FUNC1(dev, ref);
	return (retval);
}