
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {int* ue_eaddr; } ;
struct TYPE_2__ {int ue_dev; } ;
struct axe_softc {int* sc_phyaddrs; int sc_phyno; int sc_flags; int* sc_ipgs; TYPE_1__ sc_ue; } ;


 int AXE_172_CMD_READ_NODEID ;
 int AXE_178_CMD_READ_NODEID ;
 int AXE_CMD_READ_IPG012 ;
 int AXE_CMD_READ_PHYID ;
 int AXE_FLAG_178 ;
 int AXE_FLAG_772 ;
 int AXE_FLAG_772A ;
 int AXE_FLAG_772B ;
 int AXE_PHY_SEL_PRI ;
 int AXE_PHY_SEL_SEC ;
 int axe_ax88178_init (struct axe_softc*) ;
 int axe_ax88772_init (struct axe_softc*) ;
 int axe_ax88772a_init (struct axe_softc*) ;
 int axe_ax88772b_init (struct axe_softc*) ;
 int axe_cmd (struct axe_softc*,int ,int ,int ,int*) ;
 void* axe_get_phyno (struct axe_softc*,int ) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 struct axe_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
axe_attach_post(struct usb_ether *ue)
{
 struct axe_softc *sc = uether_getsc(ue);




 axe_cmd(sc, AXE_CMD_READ_PHYID, 0, 0, sc->sc_phyaddrs);
 if (bootverbose)
  device_printf(sc->sc_ue.ue_dev, "PHYADDR 0x%02x:0x%02x\n",
      sc->sc_phyaddrs[0], sc->sc_phyaddrs[1]);
 sc->sc_phyno = axe_get_phyno(sc, AXE_PHY_SEL_PRI);
 if (sc->sc_phyno == -1)
  sc->sc_phyno = axe_get_phyno(sc, AXE_PHY_SEL_SEC);
 if (sc->sc_phyno == -1) {
  device_printf(sc->sc_ue.ue_dev,
      "no valid PHY address found, assuming PHY address 0\n");
  sc->sc_phyno = 0;
 }


 if (sc->sc_flags & AXE_FLAG_178) {
  axe_ax88178_init(sc);
  axe_cmd(sc, AXE_178_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);
 } else if (sc->sc_flags & AXE_FLAG_772) {
  axe_ax88772_init(sc);
  axe_cmd(sc, AXE_178_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);
 } else if (sc->sc_flags & AXE_FLAG_772A) {
  axe_ax88772a_init(sc);
  axe_cmd(sc, AXE_178_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);
 } else if (sc->sc_flags & AXE_FLAG_772B) {
  axe_ax88772b_init(sc);
 } else
  axe_cmd(sc, AXE_172_CMD_READ_NODEID, 0, 0, ue->ue_eaddr);




 if (sc->sc_flags & (AXE_FLAG_772A | AXE_FLAG_772B)) {

  sc->sc_ipgs[0] = 0x15;
  sc->sc_ipgs[1] = 0x16;
  sc->sc_ipgs[2] = 0x1A;
 } else
  axe_cmd(sc, AXE_CMD_READ_IPG012, 0, 0, sc->sc_ipgs);
}
