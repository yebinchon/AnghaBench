
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {scalar_t__ sc_vector; int sc_capabilities; int sc_stat; int sc_bh; int sc_bt; } ;


 int EIO ;
 scalar_t__ IRQUNK ;
 int TPM_DATA_AVAIL_INT ;
 int TPM_INTF_DATA_AVAIL_INT ;
 int TPM_INTF_STS_VALID_INT ;
 int TPM_STS ;
 int TPM_STS_BITS ;
 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_RESP_RETRY ;
 int TPM_STS_VALID ;
 int TPM_STS_VALID_INT ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int printf (char*,int,int ,...) ;
 int tpm_tmotohz (int) ;
 int tpm_waitfor_int (struct tpm_softc*,int,int,void*,int ) ;
 int tpm_waitfor_poll (struct tpm_softc*,int,int,void*) ;

int
tpm_waitfor(struct tpm_softc *sc, u_int8_t b0, int tmo, void *c)
{
 u_int8_t b;
 int re, to, rv;
 if (sc->sc_vector != IRQUNK) {
  b = b0;
  if ((b & TPM_STS_DATA_AVAIL) && (sc->sc_capabilities &
      TPM_INTF_DATA_AVAIL_INT))
   return tpm_waitfor_int(sc, b, tmo, c,
       TPM_DATA_AVAIL_INT);


  if ((b & TPM_STS_VALID) && (sc->sc_capabilities &
      TPM_INTF_STS_VALID_INT)) {
   rv = tpm_waitfor_int(sc, b, tmo, c, TPM_STS_VALID_INT);
   if (rv != 0)
    return rv;
   else
    b = b0 & ~TPM_STS_VALID;
  }





  if (b == 0)
   return 0;
 }

 re = 3;
restart:





 b = b0;
 if (b0 & TPM_STS_VALID)
  b = TPM_STS_VALID;

 to = tpm_tmotohz(tmo);
again:
 if ((rv = tpm_waitfor_poll(sc, b, to, c)) != 0)
  return rv;

 if ((b & sc->sc_stat) == TPM_STS_VALID) {

  b = b0 & ~TPM_STS_VALID;
  to++;
  goto again;
 }

 if ((sc->sc_stat & b) != b) {




  if (re-- && (b0 & TPM_STS_VALID)) {
   bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_STS,
       TPM_STS_RESP_RETRY);
   goto restart;
  }
  return EIO;
 }

 return 0;
}
