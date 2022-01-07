
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct bintime {int sec; } ;
struct TYPE_4__ {int leapsec_adjustment; int period; struct bintime tick_time; int period_lerp; struct bintime tick_time_lerp; } ;
struct TYPE_3__ {int th_scale; struct bintime tick_time; } ;
struct sysclock_snap {int delta; TYPE_2__ ff_info; TYPE_1__ fb_info; } ;


 int EINVAL ;
 int FBCLOCK_UPTIME ;
 int FFCLOCK_LEAPSEC ;
 int FFCLOCK_LERP ;
 int FFCLOCK_UPTIME ;


 int bintime_add (struct bintime*,struct bintime*) ;
 int bintime_addx (struct bintime*,int) ;
 int bintime_sub (struct bintime*,int *) ;
 int ffclock_boottime ;
 int ffclock_convert_delta (int,int ,struct bintime*) ;
 int getboottimebin (struct bintime*) ;

int
sysclock_snap2bintime(struct sysclock_snap *cs, struct bintime *bt,
    int whichclock, uint32_t flags)
{
 struct bintime boottimebin;





 switch (whichclock) {
 case 129:
  *bt = cs->fb_info.tick_time;


  if (cs->delta > 0)
   bintime_addx(bt, cs->fb_info.th_scale * cs->delta);

  if ((flags & FBCLOCK_UPTIME) == 0) {
   getboottimebin(&boottimebin);
   bintime_add(bt, &boottimebin);
  }
  break;
 default:
  return (EINVAL);
  break;
 }

 return (0);
}
