
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int cue_mchash (int ) ;

__attribute__((used)) static u_int
cue_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint8_t *hashtbl = arg;
 uint32_t h;

 h = cue_mchash(LLADDR(sdl));
 hashtbl[h >> 3] |= 1 << (h & 0x7);

 return (1);
}
