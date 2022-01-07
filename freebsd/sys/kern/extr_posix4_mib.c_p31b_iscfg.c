
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ P31B_VALID (int) ;
 int* facility_initialized ;

int
p31b_iscfg(int num)
{

 if (P31B_VALID(num))
  return (facility_initialized[num - 1]);
 return (0);
}
