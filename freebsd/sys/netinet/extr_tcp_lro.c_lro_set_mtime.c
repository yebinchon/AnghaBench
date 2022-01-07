
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;



__attribute__((used)) static void
lro_set_mtime(struct timeval *tv, struct timespec *ts)
{
 tv->tv_sec = ts->tv_sec;
 tv->tv_usec = ts->tv_nsec / 1000;
}
