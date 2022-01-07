
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {struct vnode* f_root; } ;


 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 TYPE_1__* VFSTOFDESC (struct mount*) ;
 int curthread ;
 int vget (struct vnode*,int,int ) ;

__attribute__((used)) static int
fdesc_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct vnode *vp;




 vp = VFSTOFDESC(mp)->f_root;
 vget(vp, LK_EXCLUSIVE | LK_RETRY, curthread);
 *vpp = vp;
 return (0);
}
