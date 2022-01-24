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
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct cdev {int dummy; } ;
struct bktr_softc {scalar_t__ alloc_pages; int /*<<< orphan*/  bigbuf; } ;
typedef  struct bktr_softc* bktr_ptr_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int PROT_EXEC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bktr_devclass ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5( struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr )
{
	int		unit;
	bktr_ptr_t	bktr;

	unit = FUNC1(FUNC2(dev));

	if (FUNC0(FUNC2(dev)) > 0)	/* only allow mmap on /dev/bktr[n] */
		return( -1 );

	/* Get the device data */
	bktr = (struct bktr_softc*)FUNC3(bktr_devclass, unit);
	if (bktr == NULL) {
		/* the device is no longer valid/functioning */
		return (ENXIO);
	}

	if (nprot & PROT_EXEC)
		return( -1 );

	if (offset < 0)
		return( -1 );

	if (offset >= bktr->alloc_pages * PAGE_SIZE)
		return( -1 );

	*paddr = FUNC4(bktr->bigbuf) + offset;
	return( 0 );
}