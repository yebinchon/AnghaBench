
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mp_maxid ;

int
cpu_mp_probe(void)
{

 return (mp_maxid > 0);
}
