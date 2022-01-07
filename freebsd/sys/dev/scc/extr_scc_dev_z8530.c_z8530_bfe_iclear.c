
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_bas {int dummy; } ;
struct scc_softc {int sc_hwmtx; struct scc_bas sc_bas; } ;
struct scc_chan {int ch_nr; int ch_ipend; } ;


 int CHAN_A ;
 int CHAN_B ;
 int CR_RSTERR ;
 int CR_RSTTXI ;
 scalar_t__ REG_CTRL ;
 scalar_t__ REG_DATA ;
 int SER_INT_BREAK ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int scc_barrier (struct scc_bas*) ;
 int scc_getreg (struct scc_bas*,scalar_t__) ;
 int scc_setreg (struct scc_bas*,scalar_t__,int ) ;

__attribute__((used)) static int
z8530_bfe_iclear(struct scc_softc *sc, struct scc_chan *ch)
{
 struct scc_bas *bas;
 int c;

 bas = &sc->sc_bas;
 c = (ch->ch_nr == 1) ? CHAN_A : CHAN_B;
 mtx_lock_spin(&sc->sc_hwmtx);
 if (ch->ch_ipend & SER_INT_TXIDLE) {
  scc_setreg(bas, c + REG_CTRL, CR_RSTTXI);
  scc_barrier(bas);
 }
 if (ch->ch_ipend & SER_INT_RXREADY) {
  scc_getreg(bas, c + REG_DATA);
  scc_barrier(bas);
 }
 if (ch->ch_ipend & (SER_INT_OVERRUN|SER_INT_BREAK))
  scc_setreg(bas, c + REG_CTRL, CR_RSTERR);
 mtx_unlock_spin(&sc->sc_hwmtx);
 return (0);
}
