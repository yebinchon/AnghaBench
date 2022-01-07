
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ufs2_dinode {int di_extsize; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {int i_ea_refs; scalar_t__ i_ea_error; int i_ea_len; int * i_ea_area; struct ufs2_dinode* i_din2; } ;


 struct inode* VTOI (struct vnode*) ;
 int ffs_lock_ea (struct vnode*) ;
 int ffs_rdextattr (int **,struct vnode*,struct thread*,int ) ;
 int ffs_unlock_ea (struct vnode*) ;

__attribute__((used)) static int
ffs_open_ea(struct vnode *vp, struct ucred *cred, struct thread *td)
{
 struct inode *ip;
 struct ufs2_dinode *dp;
 int error;

 ip = VTOI(vp);

 ffs_lock_ea(vp);
 if (ip->i_ea_area != ((void*)0)) {
  ip->i_ea_refs++;
  ffs_unlock_ea(vp);
  return (0);
 }
 dp = ip->i_din2;
 error = ffs_rdextattr(&ip->i_ea_area, vp, td, 0);
 if (error) {
  ffs_unlock_ea(vp);
  return (error);
 }
 ip->i_ea_len = dp->di_extsize;
 ip->i_ea_error = 0;
 ip->i_ea_refs++;
 ffs_unlock_ea(vp);
 return (0);
}
