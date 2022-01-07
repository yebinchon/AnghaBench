
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_close_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;


 int tmpfs_update (struct vnode*) ;

__attribute__((used)) static int
tmpfs_close(struct vop_close_args *v)
{
 struct vnode *vp = v->a_vp;


 tmpfs_update(vp);

 return (0);
}
