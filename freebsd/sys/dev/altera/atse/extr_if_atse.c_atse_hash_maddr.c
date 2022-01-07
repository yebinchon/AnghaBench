
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int* LLADDR (struct sockaddr_dl*) ;

__attribute__((used)) static u_int
atse_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint64_t *h = arg;
 uint8_t *addr, x, y;
 int i, j;

 addr = LLADDR(sdl);
 x = 0;
 for (i = 0; i < ETHER_ADDR_LEN; i++) {
  y = addr[i] & 0x01;
  for (j = 1; j < 8; j++)
   y ^= (addr[i] >> j) & 0x01;
  x |= (y << i);
 }
 *h |= (1 << x);

 return (1);
}
