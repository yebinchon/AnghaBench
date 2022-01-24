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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int (* d_mmap_single ) (struct cdev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 struct cdevsw* FUNC0 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cdev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, vm_ooffset_t *offset, vm_size_t size,
    vm_object_t *object, int nprot)
{
	struct cdevsw *dsw;
	int ref, retval;

	dsw = FUNC0(dev, &ref);
	if (dsw == NULL)
		return (ENXIO);
	FUNC2(&Giant);
	retval = dsw->d_gianttrick->d_mmap_single(dev, offset, size, object,
	    nprot);
	FUNC3(&Giant);
	FUNC1(dev, ref);
	return (retval);
}