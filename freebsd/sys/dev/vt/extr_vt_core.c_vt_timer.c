
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {scalar_t__ vd_timer_armed; } ;


 int vt_flush (struct vt_device*) ;
 int vt_schedule_flush (struct vt_device*,int ) ;

__attribute__((used)) static void
vt_timer(void *arg)
{
 struct vt_device *vd;
 int changed;

 vd = arg;

 changed = vt_flush(vd);


 if (changed)
  vt_schedule_flush(vd, 0);
 else
  vd->vd_timer_armed = 0;
}
