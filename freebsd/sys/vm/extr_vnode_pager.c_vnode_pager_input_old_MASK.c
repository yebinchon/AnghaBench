#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  TYPE_4__* vm_object_t ;
struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; TYPE_9__* uio_td; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct sf_buf {int dummy; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_17__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_13__ {scalar_t__ vnp_size; } ;
struct TYPE_14__ {TYPE_1__ vnp; } ;
struct TYPE_16__ {struct vnode* handle; TYPE_2__ un_pager; } ;
struct TYPE_15__ {scalar_t__ dirty; int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int VM_PAGER_BAD ; 
 int VM_PAGER_ERROR ; 
 int VM_PAGER_OK ; 
 int FUNC5 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 TYPE_9__* curthread ; 
 struct sf_buf* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sf_buf*) ; 
 scalar_t__ FUNC9 (struct sf_buf*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC11(vm_object_t object, vm_page_t m)
{
	struct uio auio;
	struct iovec aiov;
	int error;
	int size;
	struct sf_buf *sf;
	struct vnode *vp;

	FUNC2(object);
	error = 0;

	/*
	 * Return failure if beyond current EOF
	 */
	if (FUNC0(m->pindex) >= object->un_pager.vnp.vnp_size) {
		return VM_PAGER_BAD;
	} else {
		size = PAGE_SIZE;
		if (FUNC0(m->pindex) + size > object->un_pager.vnp.vnp_size)
			size = object->un_pager.vnp.vnp_size - FUNC0(m->pindex);
		vp = object->handle;
		FUNC4(object);

		/*
		 * Allocate a kernel virtual address and initialize so that
		 * we can use VOP_READ/WRITE routines.
		 */
		sf = FUNC7(m, 0);

		aiov.iov_base = (caddr_t)FUNC9(sf);
		aiov.iov_len = size;
		auio.uio_iov = &aiov;
		auio.uio_iovcnt = 1;
		auio.uio_offset = FUNC0(m->pindex);
		auio.uio_segflg = UIO_SYSSPACE;
		auio.uio_rw = UIO_READ;
		auio.uio_resid = size;
		auio.uio_td = curthread;

		error = FUNC5(vp, &auio, 0, curthread->td_ucred);
		if (!error) {
			int count = size - auio.uio_resid;

			if (count == 0)
				error = EINVAL;
			else if (count != PAGE_SIZE)
				FUNC6((caddr_t)FUNC9(sf) + count,
				    PAGE_SIZE - count);
		}
		FUNC8(sf);

		FUNC3(object);
	}
	FUNC1(m->dirty == 0, ("vnode_pager_input_old: page %p is dirty", m));
	if (!error)
		FUNC10(m);
	return error ? VM_PAGER_ERROR : VM_PAGER_OK;
}