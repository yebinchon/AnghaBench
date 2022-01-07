
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct flock {int dummy; } ;


 int F_REMOTE ;
 int F_UNLCK ;
 int VOP_ADVLOCK (struct vnode*,int ,int ,struct flock*,int ) ;

__attribute__((used)) static int
lf_clearremotesys_iterator(struct vnode *vp, struct flock *fl, void *arg)
{

 VOP_ADVLOCK(vp, 0, F_UNLCK, fl, F_REMOTE);
 return (0);
}
