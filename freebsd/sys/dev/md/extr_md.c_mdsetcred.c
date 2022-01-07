
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; int uio_resid; int uio_segflg; int uio_rw; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct md_s {scalar_t__ vnode; scalar_t__ cred; int sectorsize; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef int auio ;


 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int M_TEMP ;
 int M_WAITOK ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_READ (scalar_t__,struct uio*,int ,scalar_t__) ;
 int VOP_UNLOCK (scalar_t__,int ) ;
 int bzero (struct uio*,int) ;
 int crfree (scalar_t__) ;
 scalar_t__ crhold (struct ucred*) ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int vn_lock (scalar_t__,int) ;

__attribute__((used)) static int
mdsetcred(struct md_s *sc, struct ucred *cred)
{
 char *tmpbuf;
 int error = 0;





 if (sc->cred)
  crfree(sc->cred);
 sc->cred = crhold(cred);





 if (sc->vnode) {
  struct uio auio;
  struct iovec aiov;

  tmpbuf = malloc(sc->sectorsize, M_TEMP, M_WAITOK);
  bzero(&auio, sizeof(auio));

  aiov.iov_base = tmpbuf;
  aiov.iov_len = sc->sectorsize;
  auio.uio_iov = &aiov;
  auio.uio_iovcnt = 1;
  auio.uio_offset = 0;
  auio.uio_rw = UIO_READ;
  auio.uio_segflg = UIO_SYSSPACE;
  auio.uio_resid = aiov.iov_len;
  vn_lock(sc->vnode, LK_EXCLUSIVE | LK_RETRY);
  error = VOP_READ(sc->vnode, &auio, 0, sc->cred);
  VOP_UNLOCK(sc->vnode, 0);
  free(tmpbuf, M_TEMP);
 }
 return (error);
}
