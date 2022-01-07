
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RAND_MAX ;
 int RIPRANDDEV ;
 int interval ;
 scalar_t__ nextalarm ;
 double rand () ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
ripinterval(int timer)
{
 double r = rand();

 interval = (int)(timer + timer * RIPRANDDEV * (r / RAND_MAX - 0.5));
 nextalarm = time(((void*)0)) + interval;
 return interval;
}
