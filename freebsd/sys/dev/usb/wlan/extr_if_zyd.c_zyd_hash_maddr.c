
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 scalar_t__ LLADDR (struct sockaddr_dl*) ;

__attribute__((used)) static u_int
zyd_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t *hash = arg;
 uint8_t v;

 v = ((uint8_t *)LLADDR(sdl))[5] >> 2;
 if (v < 32)
  hash[0] |= 1 << v;
 else
  hash[1] |= 1 << (v - 32);

 return (1);
}
