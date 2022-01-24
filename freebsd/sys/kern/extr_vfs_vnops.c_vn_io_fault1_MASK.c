#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  size_t vm_offset_t ;
struct vnode {int dummy; } ;
struct vn_io_fault_args {int dummy; } ;
struct uio {scalar_t__ uio_rw; size_t uio_resid; int uio_iovcnt; size_t uio_offset; struct iovec* uio_iov; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_td; } ;
struct thread {int td_ma_cnt; int /*<<< orphan*/ * td_ma; TYPE_2__* td_proc; } ;
struct iovec {size_t iov_len; char* iov_base; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_IOV ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  TDP_UIOHELD ; 
 int /*<<< orphan*/  UIO_NOCOPY ; 
 scalar_t__ UIO_READ ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (scalar_t__) ; 
 struct uio* FUNC3 (struct uio*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uio*,int /*<<< orphan*/ ) ; 
 int io_hold_cnt ; 
 size_t FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,struct uio*) ; 
 int FUNC10 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (struct vn_io_fault_args*,struct uio*,struct thread*) ; 
 scalar_t__ vn_io_fault_prefault ; 
 int FUNC13 (struct uio*) ; 
 int /*<<< orphan*/  vn_io_faults_cnt ; 

__attribute__((used)) static int
FUNC14(struct vnode *vp, struct uio *uio, struct vn_io_fault_args *args,
    struct thread *td)
{
	vm_page_t ma[io_hold_cnt + 2];
	struct uio *uio_clone, short_uio;
	struct iovec short_iovec[1];
	vm_page_t *prev_td_ma;
	vm_prot_t prot;
	vm_offset_t addr, end;
	size_t len, resid;
	ssize_t adv;
	int error, cnt, saveheld, prev_td_ma_cnt;

	if (vn_io_fault_prefault) {
		error = FUNC13(uio);
		if (error != 0)
			return (error); /* Or ignore ? */
	}

	prot = uio->uio_rw == UIO_READ ? VM_PROT_WRITE : VM_PROT_READ;

	/*
	 * The UFS follows IO_UNIT directive and replays back both
	 * uio_offset and uio_resid if an error is encountered during the
	 * operation.  But, since the iovec may be already advanced,
	 * uio is still in an inconsistent state.
	 *
	 * Cache a copy of the original uio, which is advanced to the redo
	 * point using UIO_NOCOPY below.
	 */
	uio_clone = FUNC3(uio);
	resid = uio->uio_resid;

	short_uio.uio_segflg = UIO_USERSPACE;
	short_uio.uio_rw = uio->uio_rw;
	short_uio.uio_td = uio->uio_td;

	error = FUNC12(args, uio, td);
	if (error != EFAULT)
		goto out;

	FUNC1(&vn_io_faults_cnt, 1);
	uio_clone->uio_segflg = UIO_NOCOPY;
	FUNC9(NULL, resid - uio->uio_resid, uio_clone);
	uio_clone->uio_segflg = uio->uio_segflg;

	saveheld = FUNC5(TDP_UIOHELD);
	prev_td_ma = td->td_ma;
	prev_td_ma_cnt = td->td_ma_cnt;

	while (uio_clone->uio_resid != 0) {
		len = uio_clone->uio_iov->iov_len;
		if (len == 0) {
			FUNC0(uio_clone->uio_iovcnt >= 1,
			    ("iovcnt underflow"));
			uio_clone->uio_iov++;
			uio_clone->uio_iovcnt--;
			continue;
		}
		if (len > io_hold_cnt * PAGE_SIZE)
			len = io_hold_cnt * PAGE_SIZE;
		addr = (uintptr_t)uio_clone->uio_iov->iov_base;
		end = FUNC7(addr + len);
		if (end < addr) {
			error = EFAULT;
			break;
		}
		cnt = FUNC2(end - FUNC8(addr));
		/*
		 * A perfectly misaligned address and length could cause
		 * both the start and the end of the chunk to use partial
		 * page.  +2 accounts for such a situation.
		 */
		cnt = FUNC10(&td->td_proc->p_vmspace->vm_map,
		    addr, len, prot, ma, io_hold_cnt + 2);
		if (cnt == -1) {
			error = EFAULT;
			break;
		}
		short_uio.uio_iov = &short_iovec[0];
		short_iovec[0].iov_base = (void *)addr;
		short_uio.uio_iovcnt = 1;
		short_uio.uio_resid = short_iovec[0].iov_len = len;
		short_uio.uio_offset = uio_clone->uio_offset;
		td->td_ma = ma;
		td->td_ma_cnt = cnt;

		error = FUNC12(args, &short_uio, td);
		FUNC11(ma, cnt);
		adv = len - short_uio.uio_resid;

		uio_clone->uio_iov->iov_base =
		    (char *)uio_clone->uio_iov->iov_base + adv;
		uio_clone->uio_iov->iov_len -= adv;
		uio_clone->uio_resid -= adv;
		uio_clone->uio_offset += adv;

		uio->uio_resid -= adv;
		uio->uio_offset += adv;

		if (error != 0 || adv == 0)
			break;
	}
	td->td_ma = prev_td_ma;
	td->td_ma_cnt = prev_td_ma_cnt;
	FUNC4(saveheld);
out:
	FUNC6(uio_clone, M_IOV);
	return (error);
}