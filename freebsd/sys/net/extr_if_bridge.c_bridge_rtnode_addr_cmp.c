
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int ETHER_ADDR_LEN ;

__attribute__((used)) static int
bridge_rtnode_addr_cmp(const uint8_t *a, const uint8_t *b)
{
 int i, d;

 for (i = 0, d = 0; i < ETHER_ADDR_LEN && d == 0; i++) {
  d = ((int)a[i]) - ((int)b[i]);
 }

 return (d);
}
