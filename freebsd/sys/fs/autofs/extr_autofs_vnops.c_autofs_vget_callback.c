
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;


 int autofs_node_vn (void*,struct mount*,int,struct vnode**) ;

__attribute__((used)) static int
autofs_vget_callback(struct mount *mp, void *arg, int flags,
    struct vnode **vpp)
{


 return (autofs_node_vn(arg, mp, flags, vpp));
}
