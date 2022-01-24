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
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  struct vm_page* vm_page_t ;
typedef  int vm_offset_t ;
struct vm_page {void* phys_addr; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; int uio_offset; scalar_t__ uio_rw; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; scalar_t__ iov_base; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ CDEV_MINOR_KMEM ; 
 scalar_t__ CDEV_MINOR_MEM ; 
 int FUNC0 (int) ; 
 int EFAULT ; 
 scalar_t__ FALSE ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ UIO_READ ; 
 int VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 scalar_t__ FUNC2 (struct cdev*) ; 
 scalar_t__ hw_direct_map ; 
 scalar_t__ FUNC3 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (scalar_t__) ; 
 void* FUNC10 (int) ; 
 int FUNC11 (void*,scalar_t__,struct uio*) ; 
 int FUNC12 (struct vm_page**,int,scalar_t__,struct uio*) ; 
 int virtual_end ; 

int
FUNC13(struct cdev *dev, struct uio *uio, int flags)
{
	struct iovec *iov;
	int error = 0;
	vm_offset_t va, eva, off, v;
	vm_prot_t prot;
	struct vm_page m;
	vm_page_t marr;
	vm_size_t cnt;

	cnt = 0;
	error = 0;

	while (uio->uio_resid > 0 && !error) {
		iov = uio->uio_iov;
		if (iov->iov_len == 0) {
			uio->uio_iov++;
			uio->uio_iovcnt--;
			if (uio->uio_iovcnt < 0)
				FUNC6("memrw");
			continue;
		}
		if (FUNC2(dev) == CDEV_MINOR_MEM) {
			v = uio->uio_offset;

kmem_direct_mapped:	off = v & PAGE_MASK;
			cnt = PAGE_SIZE - ((vm_offset_t)iov->iov_base &
			    PAGE_MASK);
			cnt = FUNC5(cnt, PAGE_SIZE - off);
			cnt = FUNC5(cnt, iov->iov_len);

			if (FUNC4(v, cnt)) {
				error = EFAULT;
				break;
			}
	
			if (hw_direct_map && !FUNC7(v, cnt)) {
				error = FUNC11((void *)FUNC1(v), cnt,
				    uio);
			} else {
				m.phys_addr = FUNC10(v);
				marr = &m;
				error = FUNC12(&marr, off, cnt, uio);
			}
		}
		else if (FUNC2(dev) == CDEV_MINOR_KMEM) {
			va = uio->uio_offset;

			if ((va < VM_MIN_KERNEL_ADDRESS) || (va > virtual_end)) {
				v = FUNC0(va);
				goto kmem_direct_mapped;
			}

			va = FUNC10(uio->uio_offset);
			eva = FUNC9(uio->uio_offset
			    + iov->iov_len);

			/* 
			 * Make sure that all the pages are currently resident
			 * so that we don't create any zero-fill pages.
			 */

			for (; va < eva; va += PAGE_SIZE)
				if (FUNC8(kernel_pmap, va) == 0)
					return (EFAULT);

			prot = (uio->uio_rw == UIO_READ)
			    ? VM_PROT_READ : VM_PROT_WRITE;

			va = uio->uio_offset;
			if (FUNC3((void *) va, iov->iov_len, prot)
			    == FALSE)
				return (EFAULT);

			error = FUNC11((void *)va, iov->iov_len, uio);

			continue;
		}
	}

	return (error);
}