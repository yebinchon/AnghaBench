
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct fifoinfo* v_fifoinfo; } ;
struct fifoinfo {scalar_t__ fi_readers; scalar_t__ fi_writers; int fi_pipe; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int M_VNODE ;
 int free (struct fifoinfo*,int ) ;
 int pipe_dtor (int ) ;

__attribute__((used)) static void
fifo_cleanup(struct vnode *vp)
{
 struct fifoinfo *fip;

 ASSERT_VOP_ELOCKED(vp, "fifo_cleanup");
 fip = vp->v_fifoinfo;
 if (fip->fi_readers == 0 && fip->fi_writers == 0) {
  vp->v_fifoinfo = ((void*)0);
  pipe_dtor(fip->fi_pipe);
  free(fip, M_VNODE);
 }
}
