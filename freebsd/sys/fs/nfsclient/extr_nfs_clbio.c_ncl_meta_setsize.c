
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_quad_t ;
struct TYPE_2__ {int bo_bsize; } ;
struct vnode {TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct nfsnode {scalar_t__ n_size; } ;
struct buf {scalar_t__ b_dirtyoff; scalar_t__ b_bcount; scalar_t__ b_dirtyend; int b_flags; } ;
typedef int daddr_t ;


 int B_RELBUF ;
 int EINTR ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int brelse (struct buf*) ;
 struct buf* nfs_getcacheblk (struct vnode*,int,int,struct thread*) ;
 int vnode_pager_setsize (struct vnode*,scalar_t__) ;
 int vtruncbuf (struct vnode*,scalar_t__,int) ;

int
ncl_meta_setsize(struct vnode *vp, struct thread *td, u_quad_t nsize)
{
 struct nfsnode *np = VTONFS(vp);
 u_quad_t tsize;
 int biosize = vp->v_bufobj.bo_bsize;
 int error = 0;

 NFSLOCKNODE(np);
 tsize = np->n_size;
 np->n_size = nsize;
 NFSUNLOCKNODE(np);

 if (nsize < tsize) {
  struct buf *bp;
  daddr_t lbn;
  int bufsize;






  error = vtruncbuf(vp, nsize, biosize);
  lbn = nsize / biosize;
  bufsize = nsize - (lbn * biosize);
  bp = nfs_getcacheblk(vp, lbn, bufsize, td);
  if (!bp)
   return EINTR;
  if (bp->b_dirtyoff > bp->b_bcount)
   bp->b_dirtyoff = bp->b_bcount;
  if (bp->b_dirtyend > bp->b_bcount)
   bp->b_dirtyend = bp->b_bcount;
  bp->b_flags |= B_RELBUF;
  brelse(bp);
 } else {
  vnode_pager_setsize(vp, nsize);
 }
 return(error);
}
