
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
__attribute__((used)) static uint32_t
bhnd_pwrctl_factor6(uint32_t x)
{
 switch (x) {
 case 133:
  return (2);
 case 132:
  return (3);
 case 131:
  return (4);
 case 130:
  return (5);
 case 129:
  return (6);
 case 128:
  return (7);
 default:
  return (0);
 }
}
