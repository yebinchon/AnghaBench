
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int ) ;int (* mtkswitch_vlan_set_pvid ) (struct mtkswitch_softc*,int,int) ;int (* mtkswitch_write ) (struct mtkswitch_softc*,int ,int) ;} ;
struct TYPE_3__ {int es_nvlangroups; int es_nports; } ;
struct mtkswitch_softc {scalar_t__ sc_switchtype; TYPE_2__ hal; TYPE_1__ info; } ;


 int MA_NOTOWNED ;
 int MTKSWITCH_LOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_UNLOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_VAWD1 ;
 int MTKSWITCH_VAWD2 ;
 int MTKSWITCH_VTCR ;
 int MTKSWITCH_VTIM (int) ;
 scalar_t__ MTK_SWITCH_MT7620 ;
 int VAWD1_IVL_MAC ;
 int VAWD1_PORT_MEMBER (int) ;
 int VAWD1_VALID ;
 int VAWD1_VTAG_EN ;
 int VTCR_BUSY ;
 int VTCR_FUNC_VID_WRITE ;
 int VTIM_MASK ;
 int VTIM_OFF (int) ;
 int mtkswitch_invalidate_vlan (struct mtkswitch_softc*,int) ;
 int stub1 (struct mtkswitch_softc*,int ) ;
 int stub2 (struct mtkswitch_softc*,int ,int) ;
 int stub3 (struct mtkswitch_softc*,int ,int) ;
 int stub4 (struct mtkswitch_softc*,int ,int) ;
 int stub5 (struct mtkswitch_softc*,int ,int) ;
 int stub6 (struct mtkswitch_softc*,int,int) ;

__attribute__((used)) static void
mtkswitch_vlan_init_hw(struct mtkswitch_softc *sc)
{
 uint32_t val, vid, i;

 MTKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 MTKSWITCH_LOCK(sc);

 for (i = 0; i < sc->info.es_nvlangroups; i++) {
  mtkswitch_invalidate_vlan(sc, i);
  if (sc->sc_switchtype == MTK_SWITCH_MT7620) {
   val = sc->hal.mtkswitch_read(sc, MTKSWITCH_VTIM(i));
   val &= ~(VTIM_MASK << VTIM_OFF(i));
   val |= ((i + 1) << VTIM_OFF(i));
   sc->hal.mtkswitch_write(sc, MTKSWITCH_VTIM(i), val);
  }
 }


 if (sc->sc_switchtype == MTK_SWITCH_MT7620) {

  vid = 0;
 } else {

  vid = 1;
 }
 val = VAWD1_IVL_MAC | VAWD1_VTAG_EN | VAWD1_VALID;
 for (i = 0; i < sc->info.es_nports; i++)
  val |= VAWD1_PORT_MEMBER(i);
 sc->hal.mtkswitch_write(sc, MTKSWITCH_VAWD1, val);
 sc->hal.mtkswitch_write(sc, MTKSWITCH_VAWD2, 0);
 val = VTCR_BUSY | VTCR_FUNC_VID_WRITE | vid;
 sc->hal.mtkswitch_write(sc, MTKSWITCH_VTCR, val);


 for (i = 0; i < sc->info.es_nports; i++) {
  sc->hal.mtkswitch_vlan_set_pvid(sc, i, 1);
 }

 MTKSWITCH_UNLOCK(sc);
}
