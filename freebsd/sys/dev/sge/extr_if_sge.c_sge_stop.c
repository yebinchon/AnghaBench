
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int sge_flags; int sge_stat_ch; scalar_t__ sge_timer; struct ifnet* sge_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int CSR_READ_4 (struct sge_softc*,int ) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int DELAY (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IntrMask ;
 int IntrStatus ;
 int RX_CTL ;
 int SGE_FLAG_LINK ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int TX_CTL ;
 int callout_stop (int *) ;
 int sge_list_rx_free (struct sge_softc*) ;
 int sge_list_tx_free (struct sge_softc*) ;

__attribute__((used)) static void
sge_stop(struct sge_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->sge_ifp;

 SGE_LOCK_ASSERT(sc);

 sc->sge_timer = 0;
 callout_stop(&sc->sge_stat_ch);
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

 CSR_WRITE_4(sc, IntrMask, 0);
 CSR_READ_4(sc, IntrMask);
 CSR_WRITE_4(sc, IntrStatus, 0xffffffff);

 CSR_WRITE_4(sc, TX_CTL, 0x1a00);
 CSR_WRITE_4(sc, RX_CTL, 0x1a00);

 DELAY(2000);
 CSR_WRITE_4(sc, IntrMask, 0);
 CSR_WRITE_4(sc, IntrStatus, 0xffffffff);

 sc->sge_flags &= ~SGE_FLAG_LINK;
 sge_list_rx_free(sc);
 sge_list_tx_free(sc);
}
