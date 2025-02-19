
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_bas {int dummy; } ;
struct scc_softc {int sc_hwmtx; struct scc_bas sc_bas; } ;
struct scc_chan {int ch_nr; int ch_ipend; } ;


 int SAB_CHANLEN ;
 scalar_t__ SAB_CMDR ;
 int SAB_CMDR_RMC ;
 scalar_t__ SAB_RBCL ;
 scalar_t__ SAB_RFIFO ;
 scalar_t__ SAB_STAR ;
 int SAB_STAR_CEC ;
 int SAB_STAR_RFNE ;
 int SER_INT_RXREADY ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int scc_barrier (struct scc_bas*) ;
 int scc_getreg (struct scc_bas*,scalar_t__) ;
 int scc_setreg (struct scc_bas*,scalar_t__,int ) ;

__attribute__((used)) static int
sab82532_bfe_iclear(struct scc_softc *sc, struct scc_chan *ch)
{
 struct scc_bas *bas;
 int i, ofs, rbcl;

 bas = &sc->sc_bas;
 ofs = (ch->ch_nr - 1) * SAB_CHANLEN;
 mtx_lock_spin(&sc->sc_hwmtx);
 if (ch->ch_ipend & SER_INT_RXREADY) {
  if (scc_getreg(bas, ofs + SAB_STAR) & SAB_STAR_RFNE) {
   rbcl = scc_getreg(bas, ofs + SAB_RBCL) & 31;
   if (rbcl == 0)
    rbcl = 32;
   for (i = 0; i < rbcl; i += 2) {
    (void)scc_getreg(bas, ofs + SAB_RFIFO);
    (void)scc_getreg(bas, ofs + SAB_RFIFO + 1);
   }
  }
  while (scc_getreg(bas, ofs + SAB_STAR) & SAB_STAR_CEC)
   ;
  scc_setreg(bas, ofs + SAB_CMDR, SAB_CMDR_RMC);
  scc_barrier(bas);
 }
 mtx_unlock_spin(&sc->sc_hwmtx);
 return (0);
}
