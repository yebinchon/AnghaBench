
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct timespec {int tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 int memset (struct timespec*,int ,int) ;

void
get_time_func(struct timeval *time)
{
 struct timespec res;
 memset(&res, 0, sizeof(struct timespec));
 clock_gettime(CLOCK_MONOTONIC, &res);

 time->tv_sec = res.tv_sec;
 time->tv_usec = 0;
}
