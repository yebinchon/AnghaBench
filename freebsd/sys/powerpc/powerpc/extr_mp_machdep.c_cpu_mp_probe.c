
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_ncpus ;

int
cpu_mp_probe(void)
{




 return (mp_ncpus > 1);
}
