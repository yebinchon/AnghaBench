
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vte_softc {int vte_dev; } ;


 int CSR_READ_2 (struct vte_softc*,int ) ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int DELAY (int) ;
 int MCR1_MAC_RESET ;
 int VTE_MACSM ;
 int VTE_MCR1 ;
 int VTE_RESET_TIMEOUT ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
vte_reset(struct vte_softc *sc)
{
 uint16_t mcr;
 int i;

 mcr = CSR_READ_2(sc, VTE_MCR1);
 CSR_WRITE_2(sc, VTE_MCR1, mcr | MCR1_MAC_RESET);
 for (i = VTE_RESET_TIMEOUT; i > 0; i--) {
  DELAY(10);
  if ((CSR_READ_2(sc, VTE_MCR1) & MCR1_MAC_RESET) == 0)
   break;
 }
 if (i == 0)
  device_printf(sc->vte_dev, "reset timeout(0x%04x)!\n", mcr);





 CSR_WRITE_2(sc, VTE_MACSM, 0x0002);
 CSR_WRITE_2(sc, VTE_MACSM, 0);
 DELAY(5000);
}
