
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int ste_dev; } ;


 int CSR_READ_4 (struct ste_softc*,int ) ;
 int DELAY (int) ;
 int STE_DMACTL ;
 int STE_DMACTL_DMA_HALTINPROG ;
 int STE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ste_wait(struct ste_softc *sc)
{
 int i;

 for (i = 0; i < STE_TIMEOUT; i++) {
  if (!(CSR_READ_4(sc, STE_DMACTL) & STE_DMACTL_DMA_HALTINPROG))
   break;
  DELAY(1);
 }

 if (i == STE_TIMEOUT)
  device_printf(sc->ste_dev, "command never completed!\n");
}
