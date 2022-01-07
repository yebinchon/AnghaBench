
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timeval {int tv_sec; int tv_usec; } ;


 int getmicrotime (struct timeval*) ;

__attribute__((used)) static inline time_t
ocs_msectime(void)
{
 struct timeval tv;

 getmicrotime(&tv);
 return (tv.tv_sec*1000) + (tv.tv_usec / 1000);
}
