
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int ETHER_ADDR_LEN ;

__attribute__((used)) static int
bridge_compare_macs(const uint8_t *m1, const uint8_t *m2)
{
 int i;

 for (i = 0; i < ETHER_ADDR_LEN; i++) {
  if (m1[i] < m2[i])
   return (-1);
  if (m1[i] > m2[i])
   return (1);
 }

 return (0);
}
