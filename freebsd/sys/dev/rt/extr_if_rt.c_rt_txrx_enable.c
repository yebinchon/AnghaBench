
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt_softc {int pdma_glo_cfg; int dev; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int DELAY (int) ;
 int FE_RX_DMA_BUSY ;
 int FE_RX_DMA_EN ;
 int FE_TX_DMA_BUSY ;
 int FE_TX_DMA_EN ;
 int FE_TX_WB_DDONE ;
 int RT_READ (struct rt_softc*,int ) ;
 int RT_WRITE (struct rt_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
rt_txrx_enable(struct rt_softc *sc)
{
 struct ifnet *ifp;
 uint32_t tmp;
 int ntries;

 ifp = sc->ifp;


 for (ntries = 0; ntries < 200; ntries++) {
  tmp = RT_READ(sc, sc->pdma_glo_cfg);
  if (!(tmp & (FE_TX_DMA_BUSY | FE_RX_DMA_BUSY)))
   break;

  DELAY(1000);
 }

 if (ntries == 200) {
  device_printf(sc->dev, "timeout waiting for DMA engine\n");
  return (-1);
 }

 DELAY(50);

 tmp |= FE_TX_WB_DDONE | FE_RX_DMA_EN | FE_TX_DMA_EN;
 RT_WRITE(sc, sc->pdma_glo_cfg, tmp);


 return (0);
}
