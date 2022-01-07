
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vop_rmdir_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct denode {int de_flag; } ;
struct componentname {int cn_cred; } ;


 int DE_RENAME ;
 int ENOTEMPTY ;
 int IO_SYNC ;
 struct denode* VTODE (struct vnode*) ;
 int cache_purge (struct vnode*) ;
 int detrunc (struct denode*,int ,int ,int ) ;
 int dosdirempty (struct denode*) ;
 int removede (struct denode*,struct denode*) ;

__attribute__((used)) static int
msdosfs_rmdir(struct vop_rmdir_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct denode *ip, *dp;
 int error;

 ip = VTODE(vp);
 dp = VTODE(dvp);
 error = 0;
 if (!dosdirempty(ip) || ip->de_flag & DE_RENAME) {
  error = ENOTEMPTY;
  goto out;
 }
 error = removede(dp, ip);
 if (error)
  goto out;





 cache_purge(dvp);



 error = detrunc(ip, (u_long)0, IO_SYNC, cnp->cn_cred);
 cache_purge(vp);

out:
 return (error);
}
