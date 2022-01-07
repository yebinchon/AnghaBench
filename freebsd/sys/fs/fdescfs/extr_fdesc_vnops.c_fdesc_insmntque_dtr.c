
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int vgone (struct vnode*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static void
fdesc_insmntque_dtr(struct vnode *vp, void *arg)
{

 vgone(vp);
 vput(vp);
}
