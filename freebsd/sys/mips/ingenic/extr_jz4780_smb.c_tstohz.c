
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;


 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec const*) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static inline int
tstohz(const struct timespec *tsp)
{
 struct timeval tv;

 TIMESPEC_TO_TIMEVAL(&tv, tsp);
 return (tvtohz(&tv));
}
