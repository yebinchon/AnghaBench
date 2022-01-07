
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int nanosleep (struct timespec*,int *) ;

__attribute__((used)) static void
t3000_nap(void)
{
 struct timespec ts;

 ts.tv_sec = 0;
 ts.tv_nsec = 50 * 1000000;

 nanosleep(&ts, ((void*)0));
}
