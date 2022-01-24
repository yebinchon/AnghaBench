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
struct uio {scalar_t__ uio_iovcnt; scalar_t__ uio_segflg; int uio_offset; int uio_resid; TYPE_1__* uio_iov; } ;
struct nfsrv_descript {char* nd_dpos; int /*<<< orphan*/ * nd_md; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
struct TYPE_2__ {int iov_len; char* iov_base; int /*<<< orphan*/  (* iov_op ) (char*,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBADRPC ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct nfsrv_descript*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 scalar_t__ UIO_SYSSPACE ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct nfsrv_descript*,long,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

int
FUNC11(struct nfsrv_descript *nd, struct uio *uiop, int siz)
{
	char *mbufcp, *uiocp;
	int xfer, left, len;
	mbuf_t mp;
	long uiosiz, rem;
	int error = 0;

	mp = nd->nd_md;
	mbufcp = nd->nd_dpos;
	len = FUNC4(mp, caddr_t) + FUNC7(mp) - mbufcp;
	rem = FUNC5(siz) - siz;
	while (siz > 0) {
		if (uiop->uio_iovcnt <= 0 || uiop->uio_iov == NULL) {
			error = EBADRPC;
			goto out;
		}
		left = uiop->uio_iov->iov_len;
		uiocp = uiop->uio_iov->iov_base;
		if (left > siz)
			left = siz;
		uiosiz = left;
		while (left > 0) {
			while (len == 0) {
				mp = FUNC8(mp);
				if (mp == NULL) {
					error = EBADRPC;
					goto out;
				}
				mbufcp = FUNC4(mp, caddr_t);
				len = FUNC7(mp);
				FUNC1(len >= 0,
				    ("len %d, corrupted mbuf?", len));
			}
			xfer = (left > len) ? len : left;
#ifdef notdef
			/* Not Yet.. */
			if (uiop->uio_iov->iov_op != NULL)
				(*(uiop->uio_iov->iov_op))
				(mbufcp, uiocp, xfer);
			else
#endif
			if (uiop->uio_segflg == UIO_SYSSPACE)
				FUNC2(mbufcp, uiocp, xfer);
			else
				FUNC6(mbufcp, FUNC0(uiocp), xfer);
			left -= xfer;
			len -= xfer;
			mbufcp += xfer;
			uiocp += xfer;
			uiop->uio_offset += xfer;
			uiop->uio_resid -= xfer;
		}
		if (uiop->uio_iov->iov_len <= siz) {
			uiop->uio_iovcnt--;
			uiop->uio_iov++;
		} else {
			uiop->uio_iov->iov_base = (void *)
				((char *)uiop->uio_iov->iov_base + uiosiz);
			uiop->uio_iov->iov_len -= uiosiz;
		}
		siz -= uiosiz;
	}
	nd->nd_dpos = mbufcp;
	nd->nd_md = mp;
	if (rem > 0) {
		if (len < rem)
			error = FUNC9(nd, rem, len);
		else
			nd->nd_dpos += rem;
	}

out:
	FUNC3(error, nd);
	return (error);
}