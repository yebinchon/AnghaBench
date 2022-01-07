
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct zyd_softc {int dummy; } ;


 int ZYD_MAC_BSSADRH ;
 int ZYD_MAC_BSSADRL ;
 int zyd_write32_m (struct zyd_softc*,int ,int) ;

__attribute__((used)) static int
zyd_set_bssid(struct zyd_softc *sc, const uint8_t *addr)
{
 int error;
 uint32_t tmp;

 tmp = addr[3] << 24 | addr[2] << 16 | addr[1] << 8 | addr[0];
 zyd_write32_m(sc, ZYD_MAC_BSSADRL, tmp);
 tmp = addr[5] << 8 | addr[4];
 zyd_write32_m(sc, ZYD_MAC_BSSADRH, tmp);
fail:
 return (error);
}
