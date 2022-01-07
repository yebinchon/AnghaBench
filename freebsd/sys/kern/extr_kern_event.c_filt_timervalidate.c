
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_sdata; int kn_flags; int kn_sfflags; } ;
struct bintime {int dummy; } ;
typedef scalar_t__ sbintime_t ;


 int EINVAL ;
 int EV_ONESHOT ;
 int NOTE_ABSTIME ;
 int NOTE_TIMER_PRECMASK ;
 scalar_t__ bttosbt (struct bintime) ;
 int getboottimebin (struct bintime*) ;
 scalar_t__ timer2sbintime (int,int) ;

__attribute__((used)) static int
filt_timervalidate(struct knote *kn, sbintime_t *to)
{
 struct bintime bt;
 sbintime_t sbt;

 if (kn->kn_sdata < 0)
  return (EINVAL);
 if (kn->kn_sdata == 0 && (kn->kn_flags & EV_ONESHOT) == 0)
  kn->kn_sdata = 1;




 if ((kn->kn_sfflags & ~(NOTE_TIMER_PRECMASK | NOTE_ABSTIME)) != 0)
  return (EINVAL);

 *to = timer2sbintime(kn->kn_sdata, kn->kn_sfflags);
 if ((kn->kn_sfflags & NOTE_ABSTIME) != 0) {
  getboottimebin(&bt);
  sbt = bttosbt(bt);
  *to -= sbt;
 }
 if (*to < 0)
  return (EINVAL);
 return (0);
}
