
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline bool
lio_is_valid_ether_addr(const uint8_t *addr)
{

 return (!(0x01 & addr[0]) && !((addr[0] + addr[1] + addr[2] + addr[3] +
     addr[4] + addr[5]) == 0x00));
}
