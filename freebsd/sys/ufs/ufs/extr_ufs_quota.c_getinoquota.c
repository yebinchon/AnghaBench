
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; int v_mount; } ;
struct ufsmount {int dummy; } ;
struct inode {int * i_dquot; scalar_t__ i_gid; scalar_t__ i_uid; } ;


 int EINVAL ;
 size_t GRPQUOTA ;
 struct vnode* ITOV (struct inode*) ;
 size_t USRQUOTA ;
 struct ufsmount* VFSTOUFS (int ) ;
 int VV_SYSTEM ;
 int dqget (struct vnode*,scalar_t__,struct ufsmount*,size_t,int *) ;

int
getinoquota(struct inode *ip)
{
 struct ufsmount *ump;
 struct vnode *vp;
 int error;

 vp = ITOV(ip);





 if ((vp->v_vflag & VV_SYSTEM) != 0)
  return (0);




 if ((int)ip->i_uid < 0 || (int)ip->i_gid < 0)
  return (0);
 ump = VFSTOUFS(vp->v_mount);




 if ((error =
  dqget(vp, ip->i_uid, ump, USRQUOTA, &ip->i_dquot[USRQUOTA])) &&
     error != EINVAL)
  return (error);




 if ((error =
  dqget(vp, ip->i_gid, ump, GRPQUOTA, &ip->i_dquot[GRPQUOTA])) &&
     error != EINVAL)
  return (error);
 return (0);
}
