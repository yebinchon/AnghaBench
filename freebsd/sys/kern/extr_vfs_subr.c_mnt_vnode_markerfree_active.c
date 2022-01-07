
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct mount {int dummy; } ;


 int KASSERT (int,char*) ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_REL (struct mount*) ;
 int M_VNODE_MARKER ;
 int free (struct vnode*,int ) ;

__attribute__((used)) static void
mnt_vnode_markerfree_active(struct vnode **mvp, struct mount *mp)
{

 KASSERT((*mvp)->v_mount == mp, ("marker vnode mount list mismatch"));

 MNT_ILOCK(mp);
 MNT_REL(mp);
 MNT_IUNLOCK(mp);
 free(*mvp, M_VNODE_MARKER);
 *mvp = ((void*)0);
}
