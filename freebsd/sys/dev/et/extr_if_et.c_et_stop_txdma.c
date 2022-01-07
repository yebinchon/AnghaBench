
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_softc {int dummy; } ;


 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int ET_TXDMA_CTRL ;
 int ET_TXDMA_CTRL_HALT ;
 int ET_TXDMA_CTRL_SINGLE_EPKT ;

__attribute__((used)) static int
et_stop_txdma(struct et_softc *sc)
{

 CSR_WRITE_4(sc, ET_TXDMA_CTRL,
      ET_TXDMA_CTRL_HALT | ET_TXDMA_CTRL_SINGLE_EPKT);
 return (0);
}
