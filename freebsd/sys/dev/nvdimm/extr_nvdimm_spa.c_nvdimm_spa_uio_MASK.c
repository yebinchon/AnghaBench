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
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct vm_page {int dummy; } ;
struct uio {int uio_resid; scalar_t__ uio_offset; } ;
struct nvdimm_spa_dev {scalar_t__ spa_len; int spa_phys_base; int /*<<< orphan*/ * spa_kva; int /*<<< orphan*/  spa_memattr; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int INT_MAX ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_page*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int,struct uio*) ; 
 int FUNC3 (struct vm_page**,int,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct nvdimm_spa_dev *dev, struct uio *uio)
{
	struct vm_page m, *ma;
	off_t off;
	vm_memattr_t mattr;
	int error, n;

	error = 0;
	if (dev->spa_kva == NULL) {
		mattr = dev->spa_memattr;
		FUNC0(&m, sizeof(m));
		FUNC4(&m, 0, mattr);
		ma = &m;
		while (uio->uio_resid > 0) {
			if (uio->uio_offset >= dev->spa_len)
				break;
			off = dev->spa_phys_base + uio->uio_offset;
			FUNC5(&m, FUNC1(off), mattr);
			n = PAGE_SIZE;
			if (n > uio->uio_resid)
				n = uio->uio_resid;
			error = FUNC3(&ma, off & PAGE_MASK, n, uio);
			if (error != 0)
				break;
		}
	} else {
		while (uio->uio_resid > 0) {
			if (uio->uio_offset >= dev->spa_len)
				break;
			n = INT_MAX;
			if (n > uio->uio_resid)
				n = uio->uio_resid;
			if (uio->uio_offset + n > dev->spa_len)
				n = dev->spa_len - uio->uio_offset;
			error = FUNC2((char *)dev->spa_kva + uio->uio_offset,
			    n, uio);
			if (error != 0)
				break;
		}
	}
	return (error);
}