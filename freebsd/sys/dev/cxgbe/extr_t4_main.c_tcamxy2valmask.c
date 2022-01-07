
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int ETHER_ADDR_LEN ;
 int htobe64 (int) ;
 int memcpy (int *,char*,int ) ;

__attribute__((used)) static inline void
tcamxy2valmask(uint64_t x, uint64_t y, uint8_t *addr, uint64_t *mask)
{
 *mask = x | y;
 y = htobe64(y);
 memcpy(addr, (char *)&y + 2, ETHER_ADDR_LEN);
}
