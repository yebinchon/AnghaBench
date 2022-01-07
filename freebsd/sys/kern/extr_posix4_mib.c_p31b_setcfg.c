
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ P31B_VALID (int) ;
 int* facility ;
 int* facility_initialized ;

void
p31b_setcfg(int num, int value)
{

 if (P31B_VALID(num)) {
  facility[num - 1] = value;
  facility_initialized[num - 1] = 1;
 }
}
