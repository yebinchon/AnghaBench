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
struct cdev {int dummy; } ;
struct TYPE_2__ {int inuse; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int EBUSY ; 
 TYPE_1__ devsoftc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, int oflags, int devtype, struct thread *td)
{

	FUNC0(&devsoftc.mtx);
	if (devsoftc.inuse) {
		FUNC1(&devsoftc.mtx);
		return (EBUSY);
	}
	/* move to init */
	devsoftc.inuse = 1;
	FUNC1(&devsoftc.mtx);
	return (0);
}