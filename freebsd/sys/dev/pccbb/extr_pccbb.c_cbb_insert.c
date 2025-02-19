
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cbb_softc {int dev; int cbdev; int flags; TYPE_1__* exca; } ;
struct TYPE_2__ {int pccarddev; } ;


 int CARD_ATTACH_CARD (int ) ;
 int CBB_16BIT_CARD ;
 int CBB_SOCKET_EVENT ;
 int CBB_SOCKET_STATE ;
 int CBB_STATE_CB_CARD ;
 int CBB_STATE_R2_CARD ;
 int DEVPRINTF (int ) ;
 int cbb_get (struct cbb_softc*,int ) ;
 scalar_t__ device_is_attached (int ) ;
 int device_printf (int ,char*) ;
 int exca_insert (TYPE_1__*) ;

__attribute__((used)) static void
cbb_insert(struct cbb_softc *sc)
{
 uint32_t sockevent, sockstate;

 sockevent = cbb_get(sc, CBB_SOCKET_EVENT);
 sockstate = cbb_get(sc, CBB_SOCKET_STATE);

 DEVPRINTF((sc->dev, "card inserted: event=0x%08x, state=%08x\n",
     sockevent, sockstate));

 if (sockstate & CBB_STATE_R2_CARD) {
  if (device_is_attached(sc->exca[0].pccarddev)) {
   sc->flags |= CBB_16BIT_CARD;
   exca_insert(&sc->exca[0]);
  } else {
   device_printf(sc->dev,
       "16-bit card inserted, but no pccard bus.\n");
  }
 } else if (sockstate & CBB_STATE_CB_CARD) {
  if (device_is_attached(sc->cbdev)) {
   sc->flags &= ~CBB_16BIT_CARD;
   CARD_ATTACH_CARD(sc->cbdev);
  } else {
   device_printf(sc->dev,
       "CardBus card inserted, but no cardbus bus.\n");
  }
 } else {




  device_printf(sc->dev, "Unsupported card type detected\n");
 }
}
