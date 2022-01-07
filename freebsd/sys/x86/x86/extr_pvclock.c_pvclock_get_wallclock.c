
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct timespec {void* tv_nsec; void* tv_sec; } ;
struct pvclock_wall_clock {int dummy; } ;


 int pvclock_read_wall_clock (struct pvclock_wall_clock*,void**,void**) ;

void
pvclock_get_wallclock(struct pvclock_wall_clock *wc, struct timespec *ts)
{
 uint32_t sec, nsec;

 pvclock_read_wall_clock(wc, &sec, &nsec);
 ts->tv_sec = sec;
 ts->tv_nsec = nsec;
}
