
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int * v_data; } ;
struct denode {char* de_Name; scalar_t__ de_flag; int de_refcnt; } ;


 int M_MSDOSFSNODE ;
 struct denode* VTODE (struct vnode*) ;
 int free (struct denode*,int ) ;
 int printf (char*,struct denode*,char*,int ) ;
 int vfs_hash_remove (struct vnode*) ;

int
msdosfs_reclaim(struct vop_reclaim_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct denode *dep = VTODE(vp);
 vfs_hash_remove(vp);






 free(dep, M_MSDOSFSNODE);
 vp->v_data = ((void*)0);

 return (0);
}
