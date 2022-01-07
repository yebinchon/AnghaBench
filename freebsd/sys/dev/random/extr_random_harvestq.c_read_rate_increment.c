
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int atomic_add_32 (int *,int ) ;
 int read_rate ;

void
read_rate_increment(u_int chunk)
{

 atomic_add_32(&read_rate, chunk);
}
