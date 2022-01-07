
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static bool
is_valid_mac_addr(uint8_t *addr)
{





 if ((addr[0] | addr[1] | addr[2] | addr[3] | addr[4] | addr[5]) == 0x00)
  return (0);
 if ((addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5]) == 0xff)
  return (0);
 return (1);
}
