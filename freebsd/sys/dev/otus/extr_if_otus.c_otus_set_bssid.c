
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct otus_softc {int dummy; } ;


 int AR_MAC_REG_BSSID_H ;
 int AR_MAC_REG_BSSID_L ;
 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 int otus_write (struct otus_softc*,int ,int const) ;
 int otus_write_barrier (struct otus_softc*) ;

int
otus_set_bssid(struct otus_softc *sc, const uint8_t *bssid)
{

 OTUS_LOCK_ASSERT(sc);

 otus_write(sc, AR_MAC_REG_BSSID_L,
     bssid[0] | bssid[1] << 8 | bssid[2] << 16 | bssid[3] << 24);
 otus_write(sc, AR_MAC_REG_BSSID_H,
     bssid[4] | bssid[5] << 8);
 return otus_write_barrier(sc);
}
