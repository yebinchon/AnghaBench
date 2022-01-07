
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int vd_flags; int vd_timer; int vd_timer_armed; } ;


 int MA_OWNED ;
 int VDF_ASYNC ;
 int VT_LOCK_ASSERT (struct vt_device*,int ) ;
 int atomic_cmpset_int (int *,int,int ) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
vt_suspend_flush_timer(struct vt_device *vd)
{





 VT_LOCK_ASSERT(vd, MA_OWNED);

 if (!(vd->vd_flags & VDF_ASYNC) ||
     !atomic_cmpset_int(&vd->vd_timer_armed, 1, 0))
  return;

 callout_stop(&vd->vd_timer);
}
