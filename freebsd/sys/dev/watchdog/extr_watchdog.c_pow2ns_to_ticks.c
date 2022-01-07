
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;


 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int pow2ns_to_ts (int,struct timespec*) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static int
pow2ns_to_ticks(int pow2ns)
{
 struct timeval tv;
 struct timespec ts;

 pow2ns_to_ts(pow2ns, &ts);
 TIMESPEC_TO_TIMEVAL(&tv, &ts);
 return (tvtohz(&tv));
}
