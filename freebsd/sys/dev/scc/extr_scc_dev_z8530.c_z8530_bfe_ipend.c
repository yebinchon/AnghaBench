
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct scc_bas {int dummy; } ;
struct scc_softc {int sc_hwmtx; struct scc_chan* sc_chan; struct scc_bas sc_bas; } ;
struct scc_chan {int ch_ipend; int ch_hwsig; } ;


 int BES_BRK ;
 int BES_CTS ;
 int BES_DCD ;
 int BES_SYNC ;
 int CHAN_A ;
 int CHAN_B ;
 int CR_RSTXSI ;
 int IP_RIA ;
 int IP_RIB ;
 int IP_SIA ;
 int IP_SIB ;
 int IP_TIA ;
 int IP_TIB ;
 int RR_IP ;
 int RR_SRC ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DCTS ;
 int SER_DDCD ;
 int SER_DDSR ;
 int SER_DSR ;
 int SER_INT_BREAK ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_SIGCHG ;
 int SER_INT_TXIDLE ;
 int SER_MASK_DELTA ;
 int SIGCHG (int,int,int ,int ) ;
 int SRC_OVR ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int scc_getmreg (struct scc_bas*,int ,int ) ;

__attribute__((used)) static int
z8530_bfe_ipend(struct scc_softc *sc)
{
 struct scc_bas *bas;
 struct scc_chan *ch[2];
 uint32_t sig;
 uint8_t bes, ip, src;

 bas = &sc->sc_bas;
 ch[0] = &sc->sc_chan[0];
 ch[1] = &sc->sc_chan[1];
 ch[0]->ch_ipend = 0;
 ch[1]->ch_ipend = 0;

 mtx_lock_spin(&sc->sc_hwmtx);
 ip = scc_getmreg(bas, CHAN_A, RR_IP);
 if (ip & IP_RIA)
  ch[0]->ch_ipend |= SER_INT_RXREADY;
 if (ip & IP_RIB)
  ch[1]->ch_ipend |= SER_INT_RXREADY;
 if (ip & IP_TIA)
  ch[0]->ch_ipend |= SER_INT_TXIDLE;
 if (ip & IP_TIB)
  ch[1]->ch_ipend |= SER_INT_TXIDLE;
 if (ip & IP_SIA) {
  bes = scc_getmreg(bas, CHAN_A, CR_RSTXSI);
  if (bes & BES_BRK)
   ch[0]->ch_ipend |= SER_INT_BREAK;
  sig = ch[0]->ch_hwsig;
  SIGCHG(bes & BES_CTS, sig, SER_CTS, SER_DCTS);
  SIGCHG(bes & BES_DCD, sig, SER_DCD, SER_DDCD);
  SIGCHG(bes & BES_SYNC, sig, SER_DSR, SER_DDSR);
  if (sig & SER_MASK_DELTA) {
   ch[0]->ch_hwsig = sig;
   ch[0]->ch_ipend |= SER_INT_SIGCHG;
  }
  src = scc_getmreg(bas, CHAN_A, RR_SRC);
  if (src & SRC_OVR)
   ch[0]->ch_ipend |= SER_INT_OVERRUN;
 }
 if (ip & IP_SIB) {
  bes = scc_getmreg(bas, CHAN_B, CR_RSTXSI);
  if (bes & BES_BRK)
   ch[1]->ch_ipend |= SER_INT_BREAK;
  sig = ch[1]->ch_hwsig;
  SIGCHG(bes & BES_CTS, sig, SER_CTS, SER_DCTS);
  SIGCHG(bes & BES_DCD, sig, SER_DCD, SER_DDCD);
  SIGCHG(bes & BES_SYNC, sig, SER_DSR, SER_DDSR);
  if (sig & SER_MASK_DELTA) {
   ch[1]->ch_hwsig = sig;
   ch[1]->ch_ipend |= SER_INT_SIGCHG;
  }
  src = scc_getmreg(bas, CHAN_B, RR_SRC);
  if (src & SRC_OVR)
   ch[1]->ch_ipend |= SER_INT_OVERRUN;
 }
 mtx_unlock_spin(&sc->sc_hwmtx);

 return (ch[0]->ch_ipend | ch[1]->ch_ipend);
}
