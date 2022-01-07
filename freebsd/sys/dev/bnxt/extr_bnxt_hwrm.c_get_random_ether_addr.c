
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int temp ;


 int ETHER_ADDR_LEN ;
 int arc4rand (int**,int,int ) ;
 int bcopy (int*,int*,int) ;

__attribute__((used)) static inline void
get_random_ether_addr(uint8_t *addr)
{
 uint8_t temp[ETHER_ADDR_LEN];

 arc4rand(&temp, sizeof(temp), 0);
 temp[0] &= 0xFE;
 temp[0] |= 0x02;
 bcopy(temp, addr, sizeof(temp));
}
