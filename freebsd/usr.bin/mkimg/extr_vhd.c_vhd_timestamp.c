
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;


 int time (int *) ;
 int unit_testing ;

__attribute__((used)) static uint32_t
vhd_timestamp(void)
{
 time_t t;

 if (!unit_testing) {
  t = time(((void*)0));
  return (t - 0x386d4380);
 }

 return (0x01234567);
}
