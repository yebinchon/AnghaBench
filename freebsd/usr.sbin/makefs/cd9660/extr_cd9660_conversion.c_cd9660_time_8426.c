
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int temp ;
struct tm {scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; scalar_t__ tm_sec; scalar_t__ tm_min; } ;


 unsigned char cd9660_compute_gm_offset (int ) ;
 int localtime_r (int *,struct tm*) ;
 int memcpy (unsigned char*,char*,int) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int,int ) ;

void
cd9660_time_8426(unsigned char *buf, time_t tim)
{
 struct tm t;
 char temp[18];

 (void)localtime_r(&tim, &t);
 (void)snprintf(temp, sizeof(temp), "%04i%02i%02i%02i%02i%02i%02i",
  1900+(int)t.tm_year,
  (int)t.tm_mon+1,
  (int)t.tm_mday,
  (int)t.tm_hour,
  (int)t.tm_min,
  (int)t.tm_sec,
  0);
 (void)memcpy(buf, temp, 16);
 buf[16] = cd9660_compute_gm_offset(tim);
}
