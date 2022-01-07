
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cbb_softc {scalar_t__ cardok; } ;
typedef int device_t ;


 scalar_t__ CBB_CARD_PRESENT (int ) ;
 int CBB_SOCKET_STATE ;
 int cbb_get (struct cbb_softc*,int ) ;
 scalar_t__ device_get_softc (int ) ;

int
cbb_child_present(device_t parent, device_t child)
{
 struct cbb_softc *sc = (struct cbb_softc *)device_get_softc(parent);
 uint32_t sockstate;

 sockstate = cbb_get(sc, CBB_SOCKET_STATE);
 return (CBB_CARD_PRESENT(sockstate) && sc->cardok);
}
