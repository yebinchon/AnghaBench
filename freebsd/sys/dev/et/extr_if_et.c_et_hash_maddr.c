
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
et_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t h, *hp, *hash = arg;

 h = ether_crc32_be(LLADDR(sdl), ETHER_ADDR_LEN);
 h = (h & 0x3f800000) >> 23;

 hp = &hash[0];
 if (h >= 32 && h < 64) {
  h -= 32;
  hp = &hash[1];
 } else if (h >= 64 && h < 96) {
  h -= 64;
  hp = &hash[2];
 } else if (h >= 96) {
  h -= 96;
  hp = &hash[3];
 }
 *hp |= (1 << h);

 return (1);
}
