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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct uio {int uio_iovcnt; int uio_resid; struct thread* uio_td; scalar_t__ uio_offset; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_segflg; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct socket {int /*<<< orphan*/  so_vnet; } ;
struct sockaddr {int dummy; } ;
struct nbpcb {struct socket* nbp_tso; } ;
struct mbuf {int dummy; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  len ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EFBIG ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int SMB_MAXPKTLEN ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct socket*,struct sockaddr**,struct uio*,struct mbuf**,struct mbuf**,int*) ; 

__attribute__((used)) static int
FUNC6(struct nbpcb *nbp, int *lenp,
	u_int8_t *rpcodep, int flags, struct thread *td)
{
	struct socket *so = nbp->nbp_tso;
	struct uio auio;
	struct iovec aio;
	u_int32_t len;
	int error;

	aio.iov_base = (caddr_t)&len;
	aio.iov_len = sizeof(len);
	auio.uio_iov = &aio;
	auio.uio_iovcnt = 1;
	auio.uio_segflg = UIO_SYSSPACE;
	auio.uio_rw = UIO_READ;
	auio.uio_offset = 0;
	auio.uio_resid = sizeof(len);
	auio.uio_td = td;
	FUNC1(so->so_vnet);
	error = FUNC5(so, (struct sockaddr **)NULL, &auio,
	    (struct mbuf **)NULL, (struct mbuf **)NULL, &flags);
	FUNC0();
	if (error)
		return error;
	if (auio.uio_resid > 0) {
		FUNC3("short reply\n");
		return EPIPE;
	}
	len = FUNC4(len);
	*rpcodep = (len >> 24) & 0xFF;
	len &= 0x1ffff;
	if (len > SMB_MAXPKTLEN) {
		FUNC2("packet too long (%d)\n", len);
		return EFBIG;
	}
	*lenp = len;
	return 0;
}