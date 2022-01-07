
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct inode {int i_flag; int i_ea_refs; } ;


 int IN_EA_LOCKED ;
 int IN_EA_LOCKWAIT ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 struct inode* VTOI (struct vnode*) ;
 int wakeup (int *) ;

__attribute__((used)) static void
ffs_unlock_ea(struct vnode *vp)
{
 struct inode *ip;

 ip = VTOI(vp);
 VI_LOCK(vp);
 if (ip->i_flag & IN_EA_LOCKWAIT)
  wakeup(&ip->i_ea_refs);
 ip->i_flag &= ~(IN_EA_LOCKED | IN_EA_LOCKWAIT);
 VI_UNLOCK(vp);
}
