
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_ncpus ;

void
cpu_mp_setmaxid(void)
{





 if (mp_ncpus == 0)
  mp_ncpus = 1;
}
