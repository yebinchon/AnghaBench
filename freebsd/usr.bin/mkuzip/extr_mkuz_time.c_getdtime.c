
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 double timespec2dtime (struct timespec*) ;

double
getdtime(void)
{
    struct timespec tp;

    if (clock_gettime(CLOCK_MONOTONIC, &tp) == -1)
        return (-1);

    return timespec2dtime(&tp);
}
