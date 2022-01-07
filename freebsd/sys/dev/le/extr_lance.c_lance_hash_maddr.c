
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct lance_softc {int dummy; } ;
struct lance_hash_maddr_ctx {int * af; struct lance_softc* sc; } ;


 int ETHER_ADDR_LEN ;
 int LE_HTOLE16 (int) ;
 int LLADDR (struct sockaddr_dl*) ;
 int ether_crc32_le (int ,int ) ;

__attribute__((used)) static u_int
lance_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct lance_hash_maddr_ctx *ctx = arg;
 struct lance_softc *sc = ctx->sc;
 uint32_t crc;

 crc = ether_crc32_le(LLADDR(sdl), ETHER_ADDR_LEN);

 crc >>= 26;

 ctx->af[crc >> 4] |= LE_HTOLE16(1 << (crc & 0xf));

 return (1);
}
