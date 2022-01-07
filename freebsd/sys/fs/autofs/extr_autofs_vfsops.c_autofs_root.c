
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct autofs_mount {int am_root; } ;


 struct autofs_mount* VFSTOAUTOFS (struct mount*) ;
 int autofs_node_vn (int ,struct mount*,int,struct vnode**) ;

__attribute__((used)) static int
autofs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct autofs_mount *amp;
 int error;

 amp = VFSTOAUTOFS(mp);

 error = autofs_node_vn(amp->am_root, mp, flags, vpp);

 return (error);
}
