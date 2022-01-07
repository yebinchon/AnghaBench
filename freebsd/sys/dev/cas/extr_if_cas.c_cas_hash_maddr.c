
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int ether_crc32_le (int ,int ) ;

__attribute__((used)) static u_int
cas_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t crc, *hash = arg;

 crc = ether_crc32_le(LLADDR(sdl), ETHER_ADDR_LEN);

 crc >>= 24;

 hash[crc >> 4] |= 1 << (15 - (crc & 15));

 return (1);
}
