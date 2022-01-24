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
struct uio {int uio_iovcnt; struct iovec* uio_iov; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct iovec*,struct iovec*,int) ; 
 struct uio* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct uio *
FUNC2(struct uio *uiop)
{
	struct uio *uio;
	int iovlen;

	iovlen = uiop->uio_iovcnt * sizeof (struct iovec);
	uio = FUNC1(iovlen + sizeof *uio, M_IOV, M_WAITOK);
	*uio = *uiop;
	uio->uio_iov = (struct iovec *)(uio + 1);
	FUNC0(uiop->uio_iov, uio->uio_iov, iovlen);
	return (uio);
}