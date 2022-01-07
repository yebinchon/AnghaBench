
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_access_args {int a_accmode; int a_cred; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct msdosfsmount {int pm_dirmask; int pm_mask; int pm_gid; int pm_uid; } ;
struct denode {struct msdosfsmount* de_pmp; } ;
typedef int mode_t ;
typedef int accmode_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int EROFS ;
 int MNT_RDONLY ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;


 struct denode* VTODE (struct vnode*) ;
 int VWRITE ;
 int vaccess (int,int,int ,int ,int,int ,int *) ;

__attribute__((used)) static int
msdosfs_access(struct vop_access_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct denode *dep = VTODE(ap->a_vp);
 struct msdosfsmount *pmp = dep->de_pmp;
 mode_t file_mode;
 accmode_t accmode = ap->a_accmode;

 file_mode = S_IRWXU|S_IRWXG|S_IRWXO;
 file_mode &= (vp->v_type == 129 ? pmp->pm_dirmask : pmp->pm_mask);





 if (accmode & VWRITE) {
  switch (vp->v_type) {
  case 128:
  case 129:
   if (vp->v_mount->mnt_flag & MNT_RDONLY)
    return (EROFS);
   break;
  default:
   break;
  }
 }

 return (vaccess(vp->v_type, file_mode, pmp->pm_uid, pmp->pm_gid,
     ap->a_accmode, ap->a_cred, ((void*)0)));
}
