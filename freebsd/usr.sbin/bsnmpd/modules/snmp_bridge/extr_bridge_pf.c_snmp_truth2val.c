
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static int
snmp_truth2val(int32_t truth)
{
 if (truth == 2)
  return (0);
 else if (truth == 1)
  return (1);

 return (-1);
}
