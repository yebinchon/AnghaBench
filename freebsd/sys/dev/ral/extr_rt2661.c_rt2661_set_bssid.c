
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rt2661_softc {int dummy; } ;


 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_MAC_CSR4 ;
 int RT2661_MAC_CSR5 ;
 int RT2661_ONE_BSSID ;

__attribute__((used)) static void
rt2661_set_bssid(struct rt2661_softc *sc, const uint8_t *bssid)
{
 uint32_t tmp;

 tmp = bssid[0] | bssid[1] << 8 | bssid[2] << 16 | bssid[3] << 24;
 RAL_WRITE(sc, RT2661_MAC_CSR4, tmp);

 tmp = bssid[4] | bssid[5] << 8 | RT2661_ONE_BSSID << 16;
 RAL_WRITE(sc, RT2661_MAC_CSR5, tmp);
}
