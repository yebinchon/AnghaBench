
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {int ue_eaddr; } ;
struct TYPE_2__ {int* ue_eaddr; int ue_dev; } ;
struct ure_softc {int sc_flags; int sc_chip; TYPE_1__ sc_ue; scalar_t__ sc_phyno; } ;


 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_IS_ZERO (int*) ;
 int URE_CHIP_VER_4C00 ;
 int URE_CHIP_VER_4C10 ;
 int URE_FLAG_8152 ;
 int URE_MCU_TYPE_PLA ;
 int URE_PLA_BACKUP ;
 int URE_PLA_IDR ;
 int arc4rand (int*,int ,int ) ;
 int device_printf (int ,char*) ;
 struct ure_softc* uether_getsc (struct usb_ether*) ;
 int ure_read_chipver (struct ure_softc*) ;
 int ure_read_mem (struct ure_softc*,int ,int ,int ,int) ;
 int ure_rtl8152_init (struct ure_softc*) ;
 int ure_rtl8153_init (struct ure_softc*) ;

__attribute__((used)) static void
ure_attach_post(struct usb_ether *ue)
{
 struct ure_softc *sc = uether_getsc(ue);

 sc->sc_phyno = 0;


 ure_read_chipver(sc);


 if (sc->sc_flags & URE_FLAG_8152)
  ure_rtl8152_init(sc);
 else
  ure_rtl8153_init(sc);

 if ((sc->sc_chip & URE_CHIP_VER_4C00) ||
     (sc->sc_chip & URE_CHIP_VER_4C10))
  ure_read_mem(sc, URE_PLA_IDR, URE_MCU_TYPE_PLA,
      ue->ue_eaddr, 8);
 else
  ure_read_mem(sc, URE_PLA_BACKUP, URE_MCU_TYPE_PLA,
      ue->ue_eaddr, 8);

 if (ETHER_IS_ZERO(sc->sc_ue.ue_eaddr)) {
  device_printf(sc->sc_ue.ue_dev, "MAC assigned randomly\n");
  arc4rand(sc->sc_ue.ue_eaddr, ETHER_ADDR_LEN, 0);
  sc->sc_ue.ue_eaddr[0] &= ~0x01;
  sc->sc_ue.ue_eaddr[0] |= 0x02;
 }
}
