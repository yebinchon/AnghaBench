
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u32 ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int ether_crc32_le (int ,int ) ;

__attribute__((used)) static u_int
bce_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 u32 *hashes = arg;
 int h;

 h = ether_crc32_le(LLADDR(sdl), ETHER_ADDR_LEN) & 0xFF;
 hashes[(h & 0xE0) >> 5] |= 1 << (h & 0x1F);

 return (1);
}
