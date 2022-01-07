
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2560_softc {int dummy; } ;


 int DPRINTF (struct rt2560_softc*,char*,int const*,char*) ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_CSR5 ;
 int RT2560_CSR6 ;

__attribute__((used)) static void
rt2560_set_bssid(struct rt2560_softc *sc, const uint8_t *bssid)
{
 uint32_t tmp;

 tmp = bssid[0] | bssid[1] << 8 | bssid[2] << 16 | bssid[3] << 24;
 RAL_WRITE(sc, RT2560_CSR5, tmp);

 tmp = bssid[4] | bssid[5] << 8;
 RAL_WRITE(sc, RT2560_CSR6, tmp);

 DPRINTF(sc, "setting BSSID to %6D\n", bssid, ":");
}
