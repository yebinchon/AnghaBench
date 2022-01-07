
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_softc {int mac_ver; } ;


 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_C ;
 int RT2860_GPIO_CTRL ;
 int RT2860_PCI_EECTRL ;
 int rt2860_mcu_bbp_read (struct rt2860_softc*,int) ;
 int rt2860_mcu_bbp_write (struct rt2860_softc*,int,int) ;

__attribute__((used)) static void
rt3090_set_rx_antenna(struct rt2860_softc *sc, int aux)
{
 uint32_t tmp;

 if (aux) {
  if (sc->mac_ver == 0x5390) {
   rt2860_mcu_bbp_write(sc, 152,
       rt2860_mcu_bbp_read(sc, 152) & ~0x80);
  } else {
   tmp = RAL_READ(sc, RT2860_PCI_EECTRL);
   RAL_WRITE(sc, RT2860_PCI_EECTRL, tmp & ~RT2860_C);
   tmp = RAL_READ(sc, RT2860_GPIO_CTRL);
   RAL_WRITE(sc, RT2860_GPIO_CTRL, (tmp & ~0x0808) | 0x08);
  }
 } else {
  if (sc->mac_ver == 0x5390) {
   rt2860_mcu_bbp_write(sc, 152,
       rt2860_mcu_bbp_read(sc, 152) | 0x80);
  } else {
   tmp = RAL_READ(sc, RT2860_PCI_EECTRL);
   RAL_WRITE(sc, RT2860_PCI_EECTRL, tmp | RT2860_C);
   tmp = RAL_READ(sc, RT2860_GPIO_CTRL);
   RAL_WRITE(sc, RT2860_GPIO_CTRL, tmp & ~0x0808);
  }
 }
}
