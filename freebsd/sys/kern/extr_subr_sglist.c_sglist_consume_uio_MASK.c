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
struct uio {scalar_t__ uio_segflg; size_t uio_offset; scalar_t__ uio_resid; int /*<<< orphan*/  uio_iovcnt; struct iovec* uio_iov; TYPE_2__* uio_td; } ;
struct sglist {scalar_t__ sg_maxseg; } ;
struct iovec {int iov_len; char* iov_base; } ;
typedef  int /*<<< orphan*/ * pmap_t ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_vmspace; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ UIO_USERSPACE ; 
 int FUNC1 (struct sglist*,char*,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct sglist *sg, struct uio *uio, size_t resid)
{
	struct iovec *iov;
	size_t done;
	pmap_t pmap;
	int error, len;

	if (sg->sg_maxseg == 0)
		return (EINVAL);

	if (uio->uio_segflg == UIO_USERSPACE) {
		FUNC0(uio->uio_td != NULL,
		    ("sglist_consume_uio: USERSPACE but no thread"));
		pmap = FUNC2(uio->uio_td->td_proc->p_vmspace);
	} else
		pmap = NULL;

	error = 0;
	while (resid > 0 && uio->uio_resid) {
		iov = uio->uio_iov;
		len = iov->iov_len;
		if (len == 0) {
			uio->uio_iov++;
			uio->uio_iovcnt--;
			continue;
		}
		if (len > resid)
			len = resid;

		/*
		 * Try to append this iovec.  If we run out of room,
		 * then break out of the loop.
		 */
		error = FUNC1(sg, iov->iov_base, len, pmap, &done);
		iov->iov_base = (char *)iov->iov_base + done;
		iov->iov_len -= done;
		uio->uio_resid -= done;
		uio->uio_offset += done;
		resid -= done;
		if (error)
			break;
	}
	return (0);
}