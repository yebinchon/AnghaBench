
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ nisodma; } ;
struct fwohci_softc {TYPE_1__ fc; } ;
typedef int device_t ;


 int FWOHCI_INTMASKCLR ;
 int OHCI_ARQCTLCLR ;
 int OHCI_ARSCTLCLR ;
 int OHCI_ATQCTLCLR ;
 int OHCI_ATSCTLCLR ;
 int OHCI_CNTL_DMA_RUN ;
 int OHCI_HCCCTL ;
 int OHCI_HCC_RESET ;
 int OHCI_INT_DMA_ARRQ ;
 int OHCI_INT_DMA_ARRS ;
 int OHCI_INT_DMA_ATRQ ;
 int OHCI_INT_DMA_ATRS ;
 int OHCI_INT_DMA_PRRQ ;
 int OHCI_INT_DMA_PRRS ;
 int OHCI_INT_EN ;
 int OHCI_INT_ERR ;
 int OHCI_INT_PHY_BUS_R ;
 int OHCI_INT_PHY_INT ;
 int OHCI_INT_PHY_SID ;
 int OHCI_IRCTLCLR (scalar_t__) ;
 int OHCI_ITCTLCLR (scalar_t__) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int fwohci_set_intr (TYPE_1__*,int ) ;

int
fwohci_stop(struct fwohci_softc *sc, device_t dev)
{
 u_int i;

 fwohci_set_intr(&sc->fc, 0);


 OWRITE(sc, OHCI_ARQCTLCLR, OHCI_CNTL_DMA_RUN);
 OWRITE(sc, OHCI_ARSCTLCLR, OHCI_CNTL_DMA_RUN);
 OWRITE(sc, OHCI_ATQCTLCLR, OHCI_CNTL_DMA_RUN);
 OWRITE(sc, OHCI_ATSCTLCLR, OHCI_CNTL_DMA_RUN);

 for (i = 0; i < sc->fc.nisodma; i++) {
  OWRITE(sc, OHCI_IRCTLCLR(i), OHCI_CNTL_DMA_RUN);
  OWRITE(sc, OHCI_ITCTLCLR(i), OHCI_CNTL_DMA_RUN);
 }
 return 0;
}
