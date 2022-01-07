
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 double delta_t () ;
 int printf (char*,double,double) ;

__attribute__((used)) static void
TS(u_int size, int count)
{
 double dt;

 dt = delta_t();
 printf("%8.1f usec/IO = %8.1f Mbytes/s\n",
     dt * 1000000.0 / count, (double)size * count / dt / (1024 * 1024));
}
