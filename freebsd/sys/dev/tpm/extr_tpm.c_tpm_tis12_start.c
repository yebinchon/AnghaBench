
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_softc {int sc_stat; int sc_write; int sc_bh; int sc_bt; int sc_read; } ;


 int TPM_READY_TMO ;
 int TPM_READ_TMO ;
 int TPM_STS ;
 int TPM_STS_BITS ;
 int TPM_STS_CMD_READY ;
 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_VALID ;
 int UIO_READ ;
 int bus_space_write_1 (int ,int ,int ,int) ;
 int printf (char*,...) ;
 int tpm_request_locality (struct tpm_softc*,int ) ;
 int tpm_status (struct tpm_softc*) ;
 int tpm_waitfor (struct tpm_softc*,int,int ,int ) ;

int
tpm_tis12_start(struct tpm_softc *sc, int flag)
{
 int rv;

 if (flag == UIO_READ) {
  rv = tpm_waitfor(sc, TPM_STS_DATA_AVAIL | TPM_STS_VALID,
      TPM_READ_TMO, sc->sc_read);
  return rv;
 }


 if ((rv = tpm_request_locality(sc, 0)) != 0)
  return rv;

 sc->sc_stat = tpm_status(sc);
 if (sc->sc_stat & TPM_STS_CMD_READY) {




  return 0;
 }






 bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_STS, TPM_STS_CMD_READY);
 if ((rv = tpm_waitfor(sc, TPM_STS_CMD_READY, TPM_READY_TMO,
     sc->sc_write))) {



  return rv;
 }





 return 0;
}
