
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_rdev; } ;
struct TYPE_2__ {int si_usecount; } ;


 int dev_lock () ;
 int dev_unlock () ;

int
vcount(struct vnode *vp)
{
 int count;

 dev_lock();
 count = vp->v_rdev->si_usecount;
 dev_unlock();
 return (count);
}
