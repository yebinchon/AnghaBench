
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static int
val2snmp_truth(uint8_t val)
{
 if (val == 0)
  return (2);

 return (1);
}
