
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int drm_timestamp_monotonic ;
 int ktime_get_monotonic_offset () ;
 struct timeval ktime_sub (struct timeval,int ) ;
 int microtime (struct timeval*) ;

__attribute__((used)) static struct timeval get_drm_timestamp(void)
{
 struct timeval now;

 microtime(&now);





 return now;
}
