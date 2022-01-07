
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
tsec_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t h, *hashtable = arg;

 h = (ether_crc32_be(LLADDR(sdl), ETHER_ADDR_LEN) >> 24) & 0xFF;
 hashtable[(h >> 5)] |= 1 << (0x1F - (h & 0x1F));

 return (1);
}
