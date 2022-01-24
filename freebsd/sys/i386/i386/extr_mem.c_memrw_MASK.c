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
typedef  void* vm_offset_t ;
typedef  scalar_t__ u_int ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; scalar_t__ uio_rw; scalar_t__ uio_iovcnt; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ CDEV_MINOR_KMEM ; 
 scalar_t__ CDEV_MINOR_MEM ; 
 int EFAULT ; 
 int EIO ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ UIO_READ ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  memsxlock ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int /*<<< orphan*/ * ptvmmap ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,struct uio*) ; 

int
FUNC13(struct cdev *dev, struct uio *uio, int flags)
{
	int o;
	u_int c = 0;
	vm_paddr_t pa;
	struct iovec *iov;
	int error = 0;
	vm_offset_t addr;

	if (FUNC1(dev) != CDEV_MINOR_MEM && FUNC1(dev) != CDEV_MINOR_KMEM)
		return EIO;

	if (FUNC1(dev) == CDEV_MINOR_KMEM && uio->uio_resid > 0) {
		if (!FUNC2((caddr_t)(int)uio->uio_offset, uio->uio_resid,
		    uio->uio_rw == UIO_READ ?  VM_PROT_READ : VM_PROT_WRITE))
			return (EFAULT);
	}

	while (uio->uio_resid > 0 && error == 0) {
		iov = uio->uio_iov;
		if (iov->iov_len == 0) {
			uio->uio_iov++;
			uio->uio_iovcnt--;
			if (uio->uio_iovcnt < 0)
				FUNC4("memrw");
			continue;
		}
		if (FUNC1(dev) == CDEV_MINOR_MEM) {
			if (uio->uio_offset > FUNC0()) {
				error = EFAULT;
				break;
			}
			pa = FUNC11(uio->uio_offset);
		} else {
			/*
			 * Extract the physical page since the mapping may
			 * change at any time. This avoids panics on page 
			 * fault in this case but will cause reading/writing
			 * to the wrong page.
			 * Hopefully an application will notice the wrong
			 * data on read access and refrain from writing.
			 * This should be replaced by a special uiomove
			 * type function that just returns an error if there
			 * is a page fault on a kernel page. 
			 */
			addr = FUNC11(uio->uio_offset);
			pa = FUNC5(kernel_pmap, addr);
			if (pa == 0) 
				return EFAULT;

		}
		
		/* 
		 * XXX UPS This should just use sf_buf_alloc.
		 * Unfortunately sf_buf_alloc needs a vm_page
		 * and we may want to look at memory not covered
		 * by the page array.
		 */

		FUNC9(&memsxlock);
		FUNC7((vm_offset_t)ptvmmap, pa);
		FUNC6(kernel_pmap,(vm_offset_t)ptvmmap);

		o = (int)uio->uio_offset & PAGE_MASK;
		c = PAGE_SIZE - o;
		c = FUNC3(c, (u_int)iov->iov_len);
		error = FUNC12((caddr_t)&ptvmmap[o], (int)c, uio);
		FUNC8((vm_offset_t)ptvmmap, 1);
		FUNC10(&memsxlock);
	}

	return (error);
}