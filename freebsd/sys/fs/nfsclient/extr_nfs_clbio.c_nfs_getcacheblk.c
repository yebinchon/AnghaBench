
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bo_bsize; } ;
struct vnode {scalar_t__ v_type; TYPE_1__ v_bufobj; struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct nfsmount {int nm_flag; } ;
struct mount {int dummy; } ;
struct buf {int b_blkno; } ;
typedef int sigset_t ;
typedef int daddr_t ;


 int DEV_BSIZE ;
 int NFSMNT_INT ;
 int PCATCH ;
 struct nfsmount* VFSTONFS (struct mount*) ;
 scalar_t__ VREG ;
 struct buf* getblk (struct vnode*,int,int,int ,int,int ) ;
 int hz ;
 int newnfs_restore_sigmask (struct thread*,int *) ;
 int newnfs_set_sigmask (struct thread*,int *) ;
 scalar_t__ newnfs_sigintr (struct nfsmount*,struct thread*) ;

__attribute__((used)) static struct buf *
nfs_getcacheblk(struct vnode *vp, daddr_t bn, int size, struct thread *td)
{
 struct buf *bp;
 struct mount *mp;
 struct nfsmount *nmp;

 mp = vp->v_mount;
 nmp = VFSTONFS(mp);

 if (nmp->nm_flag & NFSMNT_INT) {
  sigset_t oldset;

  newnfs_set_sigmask(td, &oldset);
  bp = getblk(vp, bn, size, PCATCH, 0, 0);
  newnfs_restore_sigmask(td, &oldset);
  while (bp == ((void*)0)) {
   if (newnfs_sigintr(nmp, td))
    return (((void*)0));
   bp = getblk(vp, bn, size, 0, 2 * hz, 0);
  }
 } else {
  bp = getblk(vp, bn, size, 0, 0, 0);
 }

 if (vp->v_type == VREG)
  bp->b_blkno = bn * (vp->v_bufobj.bo_bsize / DEV_BSIZE);
 return (bp);
}
