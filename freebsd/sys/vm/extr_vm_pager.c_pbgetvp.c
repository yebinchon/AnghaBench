
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_bufobj; } ;
struct buf {int * b_bufobj; int b_flags; struct vnode* b_vp; } ;


 int B_PAGING ;
 int KASSERT (int ,char*) ;

void
pbgetvp(struct vnode *vp, struct buf *bp)
{

 KASSERT(bp->b_vp == ((void*)0), ("pbgetvp: not free"));
 KASSERT(bp->b_bufobj == ((void*)0), ("pbgetvp: not free (bufobj)"));

 bp->b_vp = vp;
 bp->b_flags |= B_PAGING;
 bp->b_bufobj = &vp->v_bufobj;
}
