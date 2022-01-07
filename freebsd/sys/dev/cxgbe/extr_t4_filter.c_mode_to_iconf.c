
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int F_VNIC ;
 int T4_FILTER_IC_VNIC ;

__attribute__((used)) static uint32_t
mode_to_iconf(uint32_t mode)
{

 if (mode & T4_FILTER_IC_VNIC)
  return (F_VNIC);
 return (0);
}
