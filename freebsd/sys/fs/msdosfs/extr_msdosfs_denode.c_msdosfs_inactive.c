
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vop_inactive_args {struct vnode* a_vp; } ;
struct vnode {TYPE_1__* v_mount; } ;
struct denode {int* de_Name; scalar_t__ de_refcnt; int de_flag; } ;
struct TYPE_2__ {int mnt_flag; } ;


 int DE_UPDATE ;
 int MNT_RDONLY ;
 int NOCRED ;
 scalar_t__ SLOT_DELETED ;
 scalar_t__ SLOT_EMPTY ;
 struct denode* VTODE (struct vnode*) ;
 int detrunc (struct denode*,int ,int ,int ) ;
 int deupdat (struct denode*,int ) ;
 int printf (char*,...) ;
 int vrecycle (struct vnode*) ;
 int vrefcnt (struct vnode*) ;

int
msdosfs_inactive(struct vop_inactive_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct denode *dep = VTODE(vp);
 int error = 0;
 if (dep->de_Name[0] == SLOT_DELETED || dep->de_Name[0] == SLOT_EMPTY)
  goto out;
 if (dep->de_refcnt <= 0 && (vp->v_mount->mnt_flag & MNT_RDONLY) == 0) {
  error = detrunc(dep, (u_long) 0, 0, NOCRED);
  dep->de_flag |= DE_UPDATE;
  dep->de_Name[0] = SLOT_DELETED;
 }
 deupdat(dep, 0);

out:
 if (dep->de_Name[0] == SLOT_DELETED || dep->de_Name[0] == SLOT_EMPTY)
  vrecycle(vp);
 return (error);
}
