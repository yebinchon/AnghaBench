
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_2__ {int * dc_sbuf; } ;
struct dc_softc {TYPE_1__ dc_cdata; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int dc_mchash_le (struct dc_softc*,int ) ;
 int htole32 (int) ;

__attribute__((used)) static u_int
dc_hash_maddr_xircom(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct dc_softc *sc = arg;
 uint32_t h;

 h = dc_mchash_le(sc, LLADDR(sdl));
 sc->dc_cdata.dc_sbuf[h >> 4] |= htole32(1 << (h & 0xF));
 return (1);
}
