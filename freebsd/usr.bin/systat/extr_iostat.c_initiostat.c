
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dsinit (int) ;

int
initiostat(void)
{




 if (dsinit(7) != 1)
  return(0);

 return(1);
}
