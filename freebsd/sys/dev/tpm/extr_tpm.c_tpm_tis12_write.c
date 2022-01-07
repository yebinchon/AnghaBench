
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {int sc_stat; int sc_bh; int sc_bt; } ;


 int EIO ;
 int TPM_DATA ;
 int TPM_READ_TMO ;
 int TPM_STS_BITS ;
 int TPM_STS_DATA_EXPECT ;
 int TPM_STS_VALID ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int printf (char*,...) ;
 int tpm_getburst (struct tpm_softc*) ;
 int tpm_request_locality (struct tpm_softc*,int ) ;
 int tpm_status (struct tpm_softc*) ;
 int tpm_waitfor (struct tpm_softc*,int ,int ,struct tpm_softc*) ;

int
tpm_tis12_write(struct tpm_softc *sc, void *buf, int len)
{
 u_int8_t *p = buf;
 size_t cnt;
 int rv, r;





 if ((rv = tpm_request_locality(sc, 0)) != 0)
  return rv;

 cnt = 0;
 while (cnt < len - 1) {
  for (r = tpm_getburst(sc); r > 0 && cnt < len - 1; r--) {
   bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_DATA, *p++);
   cnt++;
  }
  if ((rv = tpm_waitfor(sc, TPM_STS_VALID, TPM_READ_TMO, sc))) {



   return rv;
  }
  sc->sc_stat = tpm_status(sc);
  if (!(sc->sc_stat & TPM_STS_DATA_EXPECT)) {




   return EIO;
  }
 }

 bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_DATA, *p++);
 cnt++;

 if ((rv = tpm_waitfor(sc, TPM_STS_VALID, TPM_READ_TMO, sc))) {



  return rv;
 }
 if ((sc->sc_stat & TPM_STS_DATA_EXPECT) != 0) {




  return EIO;
 }





 return 0;
}
