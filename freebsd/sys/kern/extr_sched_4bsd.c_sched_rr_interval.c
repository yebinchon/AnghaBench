
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int imax (int,int) ;
 int realstathz ;
 int sched_slice ;

int
sched_rr_interval(void)
{


 return (imax(1, (sched_slice * hz + realstathz / 2) / realstathz));
}
