
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int bo_bsize; } ;
struct vnode {struct bufobj v_bufobj; } ;
typedef int off_t ;
typedef int daddr_t ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 scalar_t__ EAGAIN ;
 int MPASS (int) ;
 int OFF_TO_IDX (int) ;
 int PAGE_SIZE ;
 scalar_t__ v_inval_buf_range_locked (struct vnode*,struct bufobj*,int,int) ;
 int vn_pages_remove (struct vnode*,int ,int ) ;

void
v_inval_buf_range(struct vnode *vp, daddr_t startlbn, daddr_t endlbn,
    int blksize)
{
 struct bufobj *bo;
 off_t start, end;

 ASSERT_VOP_LOCKED(vp, "v_inval_buf_range");

 start = blksize * startlbn;
 end = blksize * endlbn;

 bo = &vp->v_bufobj;
 BO_LOCK(bo);
 MPASS(blksize == bo->bo_bsize);

 while (v_inval_buf_range_locked(vp, bo, startlbn, endlbn) == EAGAIN)
  ;

 BO_UNLOCK(bo);
 vn_pages_remove(vp, OFF_TO_IDX(start), OFF_TO_IDX(end + PAGE_SIZE - 1));
}
