
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; int uio_td; int uio_rw; int uio_segflg; scalar_t__ uio_resid; int uio_offset; struct iovec* uio_iov; } ;
struct ksyms_softc {int sc_objsz; int sc_obj; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;


 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int curthread ;
 int uiomove_object (int ,int ,struct uio*) ;

__attribute__((used)) static int
ksyms_emit(struct ksyms_softc *sc, void *buf, off_t off, size_t sz)
{
 struct iovec iov;
 struct uio uio;

 iov.iov_base = buf;
 iov.iov_len = sz;
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 uio.uio_offset = off;
 uio.uio_resid = (ssize_t)sz;
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_rw = UIO_WRITE;
 uio.uio_td = curthread;

 return (uiomove_object(sc->sc_obj, sc->sc_objsz, &uio));
}
