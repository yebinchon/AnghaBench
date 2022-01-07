
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tpm_softc {int sc_init; int sc_bh; int sc_bt; } ;


 int EBUSY ;
 int EINVAL ;
 int EWOULDBLOCK ;
 int PCATCH ;
 int PRIBIO ;
 int TPM_ACCESS ;
 int TPM_ACCESS_ACTIVE_LOCALITY ;
 int TPM_ACCESS_BITS ;
 int TPM_ACCESS_REQUEST_USE ;
 int TPM_ACCESS_TMO ;
 int TPM_ACCESS_VALID ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int printf (char*,int,...) ;
 int tpm_tmotohz (int ) ;
 int tsleep (int ,int,char*,int) ;

int
tpm_request_locality(struct tpm_softc *sc, int l)
{
 u_int32_t r;
 int to, rv;

 if (l != 0)
  return EINVAL;

 if ((bus_space_read_1(sc->sc_bt, sc->sc_bh, TPM_ACCESS) &
     (TPM_ACCESS_VALID | TPM_ACCESS_ACTIVE_LOCALITY)) ==
     (TPM_ACCESS_VALID | TPM_ACCESS_ACTIVE_LOCALITY))
  return 0;

 bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_ACCESS,
     TPM_ACCESS_REQUEST_USE);

 to = tpm_tmotohz(TPM_ACCESS_TMO);

 while ((r = bus_space_read_1(sc->sc_bt, sc->sc_bh, TPM_ACCESS) &
     (TPM_ACCESS_VALID | TPM_ACCESS_ACTIVE_LOCALITY)) !=
     (TPM_ACCESS_VALID | TPM_ACCESS_ACTIVE_LOCALITY) && to--) {
  rv = tsleep(sc->sc_init, PRIBIO | PCATCH, "tpm_locality", 1);
  if (rv && rv != EWOULDBLOCK) {



   return rv;
  }
 }

 if ((r & (TPM_ACCESS_VALID | TPM_ACCESS_ACTIVE_LOCALITY)) !=
     (TPM_ACCESS_VALID | TPM_ACCESS_ACTIVE_LOCALITY)) {



  return EBUSY;
 }

 return 0;
}
