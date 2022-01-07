
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct mount {int mnt_kern_flag; TYPE_1__* mnt_vfc; int mnt_flag; int mnt_secondary_accwrites; int mnt_secondary_writes; } ;
struct TYPE_2__ {int vfc_flags; } ;


 int EOPNOTSUPP ;
 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int MNTK_SUSPEND2 ;
 int MNTK_SUSPENDED ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_MTX (struct mount*) ;
 int MNT_REF (struct mount*) ;
 int MNT_REL (struct mount*) ;
 int PCATCH ;
 int PDROP ;
 int PUSER ;
 int VFCF_SBDRY ;
 int VOP_GETWRITEMOUNT (struct vnode*,struct mount**) ;
 int V_MNTREF ;
 int V_NOWAIT ;
 int msleep (int *,int ,int,char*,int ) ;
 int vfs_rel (struct mount*) ;
 int vn_suspendable (struct mount*) ;

int
vn_start_secondary_write(struct vnode *vp, struct mount **mpp, int flags)
{
 struct mount *mp;
 int error;

 KASSERT((flags & V_MNTREF) == 0 || (*mpp != ((void*)0) && vp == ((void*)0)),
     ("V_MNTREF requires mp"));

 retry:
 if (vp != ((void*)0)) {
  if ((error = VOP_GETWRITEMOUNT(vp, mpp)) != 0) {
   *mpp = ((void*)0);
   if (error != EOPNOTSUPP)
    return (error);
   return (0);
  }
 }




 if ((mp = *mpp) == ((void*)0))
  return (0);

 if (!vn_suspendable(mp)) {
  if (vp != ((void*)0) || (flags & V_MNTREF) != 0)
   vfs_rel(mp);
  return (0);
 }
 MNT_ILOCK(mp);
 if (vp == ((void*)0) && (flags & V_MNTREF) == 0)
  MNT_REF(mp);
 if ((mp->mnt_kern_flag & (MNTK_SUSPENDED | MNTK_SUSPEND2)) == 0) {
  mp->mnt_secondary_writes++;
  mp->mnt_secondary_accwrites++;
  MNT_IUNLOCK(mp);
  return (0);
 }
 if (flags & V_NOWAIT) {
  MNT_REL(mp);
  MNT_IUNLOCK(mp);
  return (EWOULDBLOCK);
 }



 error = msleep(&mp->mnt_flag, MNT_MTX(mp), (PUSER - 1) | PDROP |
     ((mp->mnt_vfc->vfc_flags & VFCF_SBDRY) != 0 ? (flags & PCATCH) : 0),
     "suspfs", 0);
 vfs_rel(mp);
 if (error == 0)
  goto retry;
 return (error);
}
