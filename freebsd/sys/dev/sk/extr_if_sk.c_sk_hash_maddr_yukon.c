
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int ether_crc32_be (int ,int ) ;

__attribute__((used)) static u_int
sk_hash_maddr_yukon(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t crc, *hashes = arg;

 crc = ether_crc32_be(LLADDR(sdl), ETHER_ADDR_LEN);

 crc &= 0x3f;

 hashes[crc >> 5] |= 1 << (crc & 0x1f);

 return (1);
}
