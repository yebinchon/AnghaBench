
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static void
vfs_knllock(void *arg)
{
 struct vnode *vp = arg;

 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
}
