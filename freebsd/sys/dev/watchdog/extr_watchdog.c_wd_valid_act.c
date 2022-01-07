
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WD_SOFT_MASK ;

__attribute__((used)) static int
wd_valid_act(int act)
{

 if ((act & ~(WD_SOFT_MASK)) != 0)
  return 0;
 return 1;
}
