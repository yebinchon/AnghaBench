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
struct file {struct cdev* f_data; int /*<<< orphan*/  f_vnode; } ;
struct cdevsw {int dummy; } ;
struct cdev {scalar_t__ si_refcount; } ;
struct TYPE_2__ {struct file* td_fpop; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 struct cdevsw* FUNC3 (int /*<<< orphan*/ ,struct cdev**,int*) ; 

__attribute__((used)) static int
FUNC4(struct file *fp, struct cdev **devp, struct cdevsw **dswp,
    int *ref)
{

	*dswp = FUNC3(fp->f_vnode, devp, ref);
	if (*devp != fp->f_data) {
		if (*dswp != NULL)
			FUNC1(*devp, *ref);
		return (ENXIO);
	}
	FUNC0((*devp)->si_refcount > 0,
	    ("devfs: un-referenced struct cdev *(%s)", FUNC2(*devp)));
	if (*dswp == NULL)
		return (ENXIO);
	curthread->td_fpop = fp;
	return (0);
}