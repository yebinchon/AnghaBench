
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_offset; int uio_rw; int uio_resid; int uio_td; int uio_segflg; struct iovec* uio_iov; } ;
struct mount {int dummy; } ;
struct iovec {int dummy; } ;
struct beri_vtblk_softc {int cred; struct vnode* vnode; } ;
typedef int auio ;


 int IO_DIRECT ;
 int IO_SYNC ;
 int KASSERT (int ,char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int UIO_SYSSPACE ;
 int VOP_READ (struct vnode*,struct uio*,int ,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VOP_WRITE (struct vnode*,struct uio*,int ,int ) ;
 int V_WAIT ;
 int bzero (struct uio*,int) ;
 int curthread ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int ) ;

__attribute__((used)) static int
vtblk_rdwr(struct beri_vtblk_softc *sc, struct iovec *iov,
 int cnt, int offset, int operation, int iolen)
{
 struct vnode *vp;
 struct mount *mp;
 struct uio auio;
 int error;

 bzero(&auio, sizeof(auio));

 vp = sc->vnode;

 KASSERT(vp != ((void*)0), ("file not opened"));

 auio.uio_iov = iov;
 auio.uio_iovcnt = cnt;
 auio.uio_offset = offset;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_rw = operation;
 auio.uio_resid = iolen;
 auio.uio_td = curthread;

 if (operation == 0) {
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  error = VOP_READ(vp, &auio, IO_DIRECT, sc->cred);
  VOP_UNLOCK(vp, 0);
 } else {
  (void) vn_start_write(vp, &mp, V_WAIT);
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  error = VOP_WRITE(vp, &auio, IO_SYNC, sc->cred);
  VOP_UNLOCK(vp, 0);
  vn_finished_write(mp);
 }

 return (error);
}
