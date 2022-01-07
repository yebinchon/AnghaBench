
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;


 int US_TO_NS (int) ;
 int nanosleep (struct timespec*,int *) ;

void
ussleep(int t)
{
    struct timespec stime = {
        .tv_sec = 0,
        .tv_nsec = US_TO_NS(t),
    };

    nanosleep(&stime, ((void*)0));
}
