
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct null_node {int null_lowervp; } ;


 int null_destroy_proto (struct vnode*,void*) ;
 int vput (int ) ;

__attribute__((used)) static void
null_insmntque_dtr(struct vnode *vp, void *xp)
{

 vput(((struct null_node *)xp)->null_lowervp);
 null_destroy_proto(vp, xp);
}
