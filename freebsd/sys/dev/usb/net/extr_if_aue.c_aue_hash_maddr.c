
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int AUE_BITS ;
 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int ether_crc32_le (int ,int ) ;

__attribute__((used)) static u_int
aue_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint8_t *hashtbl = arg;
 uint32_t h;

 h = ether_crc32_le(LLADDR(sdl), ETHER_ADDR_LEN) & ((1 << AUE_BITS) - 1);
 hashtbl[(h >> 3)] |= 1 << (h & 0x7);

 return (1);
}
