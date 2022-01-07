
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; struct thread* uio_td; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ufsmount {int * um_qflags; int * um_cred; } ;
struct thread {int dummy; } ;
struct iovec {int iov_len; struct dqhdr64* iov_base; } ;
struct dqhdr64 {int dqh_reclen; int dqh_hdrlen; int dqh_version; int dqh_magic; } ;
struct dqblk64 {int dummy; } ;
typedef int dqh ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int QTF_64BIT ;
 int Q_DQHDR64_MAGIC ;
 scalar_t__ Q_DQHDR64_VERSION ;
 int UFS_LOCK (struct ufsmount*) ;
 int UFS_UNLOCK (struct ufsmount*) ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_READ (struct vnode*,struct uio*,int ,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
dqopen(struct vnode *vp, struct ufsmount *ump, int type)
{
 struct dqhdr64 dqh;
 struct iovec aiov;
 struct uio auio;
 int error;

 ASSERT_VOP_LOCKED(vp, "dqopen");
 auio.uio_iov = &aiov;
 auio.uio_iovcnt = 1;
 aiov.iov_base = &dqh;
 aiov.iov_len = sizeof(dqh);
 auio.uio_resid = sizeof(dqh);
 auio.uio_offset = 0;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_rw = UIO_READ;
 auio.uio_td = (struct thread *)0;
 error = VOP_READ(vp, &auio, 0, ump->um_cred[type]);

 if (error != 0)
  return (error);
 if (auio.uio_resid > 0) {

  return (0);
 }

 UFS_LOCK(ump);
 if (strcmp(dqh.dqh_magic, Q_DQHDR64_MAGIC) == 0 &&
     be32toh(dqh.dqh_version) == Q_DQHDR64_VERSION &&
     be32toh(dqh.dqh_hdrlen) == (uint32_t)sizeof(struct dqhdr64) &&
     be32toh(dqh.dqh_reclen) == (uint32_t)sizeof(struct dqblk64)) {

  ump->um_qflags[type] |= QTF_64BIT;
 } else {
  ump->um_qflags[type] &= ~QTF_64BIT;
 }
 UFS_UNLOCK(ump);

 return (0);
}
