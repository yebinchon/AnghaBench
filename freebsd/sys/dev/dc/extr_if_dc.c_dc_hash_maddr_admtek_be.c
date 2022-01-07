
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int dc_mchash_be (int ) ;

__attribute__((used)) static u_int
dc_hash_maddr_admtek_be(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t *hashes = arg;
 int h = 0;

 h = dc_mchash_be(LLADDR(sdl));
 if (h < 32)
  hashes[0] |= (1 << h);
 else
  hashes[1] |= (1 << (h - 32));

 return (1);
}
