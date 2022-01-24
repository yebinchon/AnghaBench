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
struct uio {int uio_resid; int uio_iovcnt; int /*<<< orphan*/  uio_rw; scalar_t__ uio_offset; int /*<<< orphan*/  uio_segflg; struct iovec* uio_iov; } ;
struct mbuf {int m_len; } ;
struct iovec {int iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (struct mbuf const*,int,struct uio*,int) ; 

__attribute__((used)) static void
FUNC2(const struct mbuf *m, int off, int len, caddr_t cp)
{
	struct iovec iov;
	struct uio uio;
	int error;

	FUNC0(off >= 0, ("m_copyfromunmapped: negative off %d", off));
	FUNC0(len >= 0, ("m_copyfromunmapped: negative len %d", len));
	FUNC0(off < m->m_len,
	    ("m_copyfromunmapped: len exceeds mbuf length"));
	iov.iov_base = cp;
	iov.iov_len = len;
	uio.uio_resid = len;
	uio.uio_iov = &iov;
	uio.uio_segflg = UIO_SYSSPACE;
	uio.uio_iovcnt = 1;
	uio.uio_offset = 0;
	uio.uio_rw = UIO_READ;
	error = FUNC1(m, off, &uio, len);
	FUNC0(error == 0, ("m_unmappedtouio failed: off %d, len %d", off,
	   len));
}