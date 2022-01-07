
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* facility ;
 scalar_t__* facility_initialized ;

void
p31b_unsetcfg(int num)
{

 facility[num - 1] = 0;
 facility_initialized[num - 1] = 0;
}
