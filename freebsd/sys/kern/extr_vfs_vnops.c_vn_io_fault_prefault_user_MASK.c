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
struct uio {scalar_t__ uio_segflg; scalar_t__ uio_resid; int uio_iovcnt; struct iovec* uio_iov; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t PAGE_SIZE ; 
 scalar_t__ UIO_USERSPACE ; 
 int FUNC1 (char*,struct uio const*) ; 

__attribute__((used)) static int
FUNC2(const struct uio *uio)
{
	char *base;
	const struct iovec *iov;
	size_t len;
	ssize_t resid;
	int error, i;

	FUNC0(uio->uio_segflg == UIO_USERSPACE,
	    ("vn_io_fault_prefault userspace"));

	error = i = 0;
	iov = uio->uio_iov;
	resid = uio->uio_resid;
	base = iov->iov_base;
	len = iov->iov_len;
	while (resid > 0) {
		error = FUNC1(base, uio);
		if (error != 0)
			break;
		if (len < PAGE_SIZE) {
			if (len != 0) {
				error = FUNC1(base + len - 1, uio);
				if (error != 0)
					break;
				resid -= len;
			}
			if (++i >= uio->uio_iovcnt)
				break;
			iov = uio->uio_iov + i;
			base = iov->iov_base;
			len = iov->iov_len;
		} else {
			len -= PAGE_SIZE;
			base += PAGE_SIZE;
			resid -= PAGE_SIZE;
		}
	}
	return (error);
}