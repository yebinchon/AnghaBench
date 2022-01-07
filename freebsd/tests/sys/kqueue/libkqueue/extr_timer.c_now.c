
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_usec; int tv_sec; } ;


 long SEC_TO_US (int ) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static long
now(void)
{
    struct timeval tv;

    gettimeofday(&tv, ((void*)0));
    return SEC_TO_US(tv.tv_sec) + tv.tv_usec;
}
