
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_rxbuf; int sc_rxdma; } ;
struct ath_desc {int dummy; } ;


 int ath_descdma_setup (struct ath_softc*,int *,int *,char*,int,int ,int) ;
 int ath_rxbuf ;

__attribute__((used)) static int
ath_legacy_dma_rxsetup(struct ath_softc *sc)
{
 int error;

 error = ath_descdma_setup(sc, &sc->sc_rxdma, &sc->sc_rxbuf,
     "rx", sizeof(struct ath_desc), ath_rxbuf, 1);
 if (error != 0)
  return (error);

 return (0);
}
