
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hogticks ;
 int hz ;
 int imax (int,int) ;
 int realstathz ;
 int sched_slice ;
 int stathz ;

__attribute__((used)) static void
sched_initticks(void *dummy)
{

 realstathz = stathz ? stathz : hz;
 sched_slice = realstathz / 10;
 hogticks = imax(1, (2 * hz * sched_slice + realstathz / 2) /
     realstathz);
}
