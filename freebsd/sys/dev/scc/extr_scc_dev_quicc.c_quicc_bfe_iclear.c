
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scc_bas {int dummy; } ;
struct scc_softc {int sc_hwmtx; struct scc_bas sc_bas; } ;
struct scc_chan {int ch_ipend; scalar_t__ ch_nr; } ;


 int QUICC_PRAM_SCC_RBASE (scalar_t__) ;
 int SER_INT_RXREADY ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int quicc_read2 (struct scc_bas*,int) ;
 int quicc_read4 (struct scc_bas*,int) ;
 int quicc_write2 (struct scc_bas*,int,int) ;

__attribute__((used)) static int
quicc_bfe_iclear(struct scc_softc *sc, struct scc_chan *ch)
{
 struct scc_bas *bas;
 uint16_t rb, st;

 bas = &sc->sc_bas;
 mtx_lock_spin(&sc->sc_hwmtx);
 if (ch->ch_ipend & SER_INT_RXREADY) {
  rb = quicc_read2(bas, QUICC_PRAM_SCC_RBASE(ch->ch_nr - 1));
  st = quicc_read2(bas, rb);
  (void)quicc_read4(bas, rb + 4);
  quicc_write2(bas, rb, st | 0x9000);
 }
 mtx_unlock_spin(&sc->sc_hwmtx);
 return (0);
}
