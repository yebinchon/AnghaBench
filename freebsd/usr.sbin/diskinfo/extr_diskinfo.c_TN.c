
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double delta_t () ;
 int printf (char*,int,double,double) ;

__attribute__((used)) static void
TN(int count)
{
 double dt;

 dt = delta_t();
 printf("%5d iter in %10.6f sec = %8.3f msec\n",
  count, dt, dt * 1000.0 / count);
}
