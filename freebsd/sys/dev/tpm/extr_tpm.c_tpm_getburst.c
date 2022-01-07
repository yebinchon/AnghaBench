
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_softc {int sc_bh; int sc_bt; } ;


 int EWOULDBLOCK ;
 int PCATCH ;
 int PRIBIO ;
 int TPM_BURST_TMO ;
 scalar_t__ TPM_STS ;
 int bus_space_read_1 (int ,int ,scalar_t__) ;
 int printf (char*,int) ;
 int tpm_tmotohz (int ) ;
 int tsleep (struct tpm_softc*,int,char*,int) ;

int
tpm_getburst(struct tpm_softc *sc)
{
 int burst, to, rv;

 to = tpm_tmotohz(TPM_BURST_TMO);

 burst = 0;
 while (burst == 0 && to--) {





  burst = bus_space_read_1(sc->sc_bt, sc->sc_bh, TPM_STS + 1);
  burst |= bus_space_read_1(sc->sc_bt, sc->sc_bh, TPM_STS + 2)
      << 8;



  if (burst)
   return burst;

  rv = tsleep(sc, PRIBIO | PCATCH, "tpm_getburst", 1);
  if (rv && rv != EWOULDBLOCK) {
   return 0;
  }
 }

 return 0;
}
