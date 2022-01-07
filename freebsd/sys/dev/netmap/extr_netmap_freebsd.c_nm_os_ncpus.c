
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ mp_maxid ;

u_int
nm_os_ncpus(void)
{
 return mp_maxid + 1;
}
