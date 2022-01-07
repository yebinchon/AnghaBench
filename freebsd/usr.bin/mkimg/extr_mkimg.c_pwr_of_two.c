
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static int
pwr_of_two(u_int nr)
{

 return (((nr & (nr - 1)) == 0) ? 1 : 0);
}
