
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_interlock; } ;
struct inode {int i_flag; int i_ea_refs; } ;


 int IN_EA_LOCKED ;
 int IN_EA_LOCKWAIT ;
 scalar_t__ PINOD ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 struct inode* VTOI (struct vnode*) ;
 int msleep (int *,int *,scalar_t__,char*,int ) ;

__attribute__((used)) static void
ffs_lock_ea(struct vnode *vp)
{
 struct inode *ip;

 ip = VTOI(vp);
 VI_LOCK(vp);
 while (ip->i_flag & IN_EA_LOCKED) {
  ip->i_flag |= IN_EA_LOCKWAIT;
  msleep(&ip->i_ea_refs, &vp->v_interlock, PINOD + 2, "ufs_ea",
      0);
 }
 ip->i_flag |= IN_EA_LOCKED;
 VI_UNLOCK(vp);
}
