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
typedef  scalar_t__ vm_prot_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  scalar_t__ u_short ;
struct ucred {int dummy; } ;
struct cdevsw {scalar_t__ (* d_mmap ) (struct cdev*,scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *) ;} ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 struct cdevsw* FUNC3 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*,int) ; 
 scalar_t__ FUNC5 (struct cdev*,scalar_t__,scalar_t__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t foff, struct ucred *cred, u_short *color)
{
	struct cdev *dev;
	struct cdevsw *csw;
	vm_memattr_t dummy;
	vm_ooffset_t off;
	vm_paddr_t paddr;
	unsigned int npages;
	int ref;

	/*
	 * Make sure this device can be mapped.
	 */
	dev = handle;
	csw = FUNC3(dev, &ref);
	if (csw == NULL)
		return (ENXIO);

	/*
	 * Check that the specified range of the device allows the desired
	 * protection.
	 *
	 * XXX assumes VM_PROT_* == PROT_*
	 */
	npages = FUNC0(size);
	paddr = 0; /* Make paddr initialized for the case of size == 0. */
	for (off = foff; npages--; off += PAGE_SIZE) {
		if (csw->d_mmap(dev, off, &paddr, (int)prot, &dummy) != 0) {
			FUNC4(dev, ref);
			return (EINVAL);
		}
	}

	FUNC2(dev);
	FUNC4(dev, ref);
	*color = FUNC1(paddr) - FUNC0(off - PAGE_SIZE);
	return (0);
}