
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int vd_timer; } ;


 int VT_TIMERFREQ ;
 int callout_schedule (int *,int) ;
 int hz ;

__attribute__((used)) static void
vt_schedule_flush(struct vt_device *vd, int ms)
{

 if (ms <= 0)

  ms = 1000 / VT_TIMERFREQ;

 callout_schedule(&vd->vd_timer, hz / (1000 / ms));
}
