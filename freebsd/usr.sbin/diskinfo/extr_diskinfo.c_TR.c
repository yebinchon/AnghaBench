
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double delta_t () ;
 int printf (char*,double,double,double) ;

__attribute__((used)) static void
TR(double count)
{
 double dt;

 dt = delta_t();
 printf("%8.0f kbytes in %10.6f sec = %8.0f kbytes/sec\n",
  count, dt, count / dt);
}
