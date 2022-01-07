
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ural_softc {int dummy; } ;


 int DPRINTF (char*,int const*,char*) ;
 int RAL_MAC_CSR5 ;
 int RAL_MAC_CSR6 ;
 int RAL_MAC_CSR7 ;
 int ural_write (struct ural_softc*,int ,int) ;

__attribute__((used)) static void
ural_set_bssid(struct ural_softc *sc, const uint8_t *bssid)
{
 uint16_t tmp;

 tmp = bssid[0] | bssid[1] << 8;
 ural_write(sc, RAL_MAC_CSR5, tmp);

 tmp = bssid[2] | bssid[3] << 8;
 ural_write(sc, RAL_MAC_CSR6, tmp);

 tmp = bssid[4] | bssid[5] << 8;
 ural_write(sc, RAL_MAC_CSR7, tmp);

 DPRINTF("setting BSSID to %6D\n", bssid, ":");
}
