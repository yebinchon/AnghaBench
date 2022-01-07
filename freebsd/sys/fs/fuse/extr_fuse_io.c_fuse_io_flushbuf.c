
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;


 int vn_fsync_buf (struct vnode*,int) ;

int
fuse_io_flushbuf(struct vnode *vp, int waitfor, struct thread *td)
{

 return (vn_fsync_buf(vp, waitfor));
}
