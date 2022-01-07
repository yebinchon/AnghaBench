
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_2__ {unsigned int days; scalar_t__ coded; } ;


 int DAY ;
 int FEB ;
 int LYC ;
 unsigned int T1980 ;
 TYPE_1__* mtab ;
 scalar_t__ utc_offset () ;

void
timespec2fattime(const struct timespec *tsp, int utc, uint16_t *ddp,
    uint16_t *dtp, uint8_t *dhp)
{
 time_t t1;
 unsigned t2, l, m;

 t1 = tsp->tv_sec;
 if (!utc)
  t1 -= utc_offset();

 if (dhp != ((void*)0))
  *dhp = (tsp->tv_sec & 1) * 100 + tsp->tv_nsec / 10000000;
 if (dtp != ((void*)0)) {
  *dtp = (t1 / 2) % 30;
  *dtp |= ((t1 / 60) % 60) << 5;
  *dtp |= ((t1 / 3600) % 24) << 11;
 }
 if (ddp != ((void*)0)) {
  t2 = t1 / DAY;
  if (t2 < T1980) {

   *ddp = 0x0021;
  } else {
   t2 -= T1980;





   if (t2 >= ((2100 - 1980) / 4 * LYC + FEB))
    t2++;


   l = t2 / LYC;
   *ddp = (l * 4) << 9;
   t2 -= l * LYC;


   m = t2 / 32;


   while (m < 47 && mtab[m + 1].days <= t2)
    m++;


   *ddp += mtab[m].coded;


   t2 -= mtab[m].days - 1;
   *ddp |= t2;
  }
 }
}
