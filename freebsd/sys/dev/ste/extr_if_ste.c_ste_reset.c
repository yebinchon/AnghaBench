
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ste_softc {int ste_dev; } ;


 int CSR_READ_4 (struct ste_softc*,int ) ;
 int CSR_WRITE_4 (struct ste_softc*,int ,int) ;
 int DELAY (int) ;
 int STE_ASICCTL ;
 int STE_ASICCTL_AUTOINIT_RESET ;
 int STE_ASICCTL_DMA_RESET ;
 int STE_ASICCTL_EXTRESET_RESET ;
 int STE_ASICCTL_FIFO_RESET ;
 int STE_ASICCTL_GLOBAL_RESET ;
 int STE_ASICCTL_HOST_RESET ;
 int STE_ASICCTL_NETWORK_RESET ;
 int STE_ASICCTL_RESET_BUSY ;
 int STE_ASICCTL_RX_RESET ;
 int STE_ASICCTL_TX_RESET ;
 int STE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ste_reset(struct ste_softc *sc)
{
 uint32_t ctl;
 int i;

 ctl = CSR_READ_4(sc, STE_ASICCTL);
 ctl |= STE_ASICCTL_GLOBAL_RESET | STE_ASICCTL_RX_RESET |
     STE_ASICCTL_TX_RESET | STE_ASICCTL_DMA_RESET |
     STE_ASICCTL_FIFO_RESET | STE_ASICCTL_NETWORK_RESET |
     STE_ASICCTL_AUTOINIT_RESET |STE_ASICCTL_HOST_RESET |
     STE_ASICCTL_EXTRESET_RESET;
 CSR_WRITE_4(sc, STE_ASICCTL, ctl);
 CSR_READ_4(sc, STE_ASICCTL);




 DELAY(1000);

 for (i = 0; i < STE_TIMEOUT; i++) {
  if (!(CSR_READ_4(sc, STE_ASICCTL) & STE_ASICCTL_RESET_BUSY))
   break;
  DELAY(10);
 }

 if (i == STE_TIMEOUT)
  device_printf(sc->ste_dev, "global reset never completed\n");
}
