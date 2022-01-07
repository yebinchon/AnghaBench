
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {scalar_t__ tm_year; int tm_yday; int tm_hour; int tm_min; } ;


 int gmtime_r (int *,struct tm*) ;
 int localtime_r (int *,struct tm*) ;

__attribute__((used)) static char
cd9660_compute_gm_offset(time_t tim)
{
 struct tm t, gm;

 (void)localtime_r(&tim, &t);
 (void)gmtime_r(&tim, &gm);
 gm.tm_year -= t.tm_year;
 gm.tm_yday -= t.tm_yday;
 gm.tm_hour -= t.tm_hour;
 gm.tm_min -= t.tm_min;
 if (gm.tm_year < 0)
  gm.tm_yday = -1;
 else if (gm.tm_year > 0)
  gm.tm_yday = 1;

 return (char)(-(gm.tm_min + 60* (24 * gm.tm_yday + gm.tm_hour)) / 15);
}
