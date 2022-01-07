
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_open_args {int a_td; int a_vp; } ;
struct denode {int de_FileSize; } ;


 struct denode* VTODE (int ) ;
 int vnode_create_vobject (int ,int ,int ) ;

__attribute__((used)) static int
msdosfs_open(struct vop_open_args *ap)
{
 struct denode *dep = VTODE(ap->a_vp);
 vnode_create_vobject(ap->a_vp, dep->de_FileSize, ap->a_td);
 return 0;
}
