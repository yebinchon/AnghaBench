
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; int uio_iovcnt; int uio_rw; scalar_t__ uio_offset; int uio_segflg; struct iovec* uio_iov; } ;
struct mbuf {int m_len; } ;
struct iovec {int iov_len; int iov_base; } ;
typedef int caddr_t ;


 int KASSERT (int,char*) ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int m_unmappedtouio (struct mbuf const*,int,struct uio*,int) ;

__attribute__((used)) static void
m_copyfromunmapped(const struct mbuf *m, int off, int len, caddr_t cp)
{
 struct iovec iov;
 struct uio uio;
 int error;

 KASSERT(off >= 0, ("m_copyfromunmapped: negative off %d", off));
 KASSERT(len >= 0, ("m_copyfromunmapped: negative len %d", len));
 KASSERT(off < m->m_len,
     ("m_copyfromunmapped: len exceeds mbuf length"));
 iov.iov_base = cp;
 iov.iov_len = len;
 uio.uio_resid = len;
 uio.uio_iov = &iov;
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_iovcnt = 1;
 uio.uio_offset = 0;
 uio.uio_rw = UIO_READ;
 error = m_unmappedtouio(m, off, &uio, len);
 KASSERT(error == 0, ("m_unmappedtouio failed: off %d, len %d", off,
    len));
}
