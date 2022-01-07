
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_softc {int sc_stat; int sc_bh; int sc_bt; int sc_read; } ;


 int EIO ;
 int TPM_ACCESS ;
 int TPM_ACCESS_ACTIVE_LOCALITY ;
 int TPM_READ_TMO ;
 int TPM_STS ;
 int TPM_STS_BITS ;
 int TPM_STS_CMD_READY ;
 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_DATA_EXPECT ;
 int TPM_STS_GO ;
 int TPM_STS_VALID ;
 int UIO_READ ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int printf (char*,int,int ) ;
 void* tpm_status (struct tpm_softc*) ;
 int tpm_waitfor (struct tpm_softc*,int ,int ,int ) ;

int
tpm_tis12_end(struct tpm_softc *sc, int flag, int err)
{
 int rv = 0;

 if (flag == UIO_READ) {
  if ((rv = tpm_waitfor(sc, TPM_STS_VALID, TPM_READ_TMO,
      sc->sc_read)))
   return rv;


  sc->sc_stat = tpm_status(sc);
  if (!err && ((sc->sc_stat & TPM_STS_DATA_AVAIL) == TPM_STS_DATA_AVAIL)) {




   rv = EIO;
  }

  bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_STS,
      TPM_STS_CMD_READY);


  bus_space_write_1(sc->sc_bt, sc->sc_bh,TPM_ACCESS,
      TPM_ACCESS_ACTIVE_LOCALITY);
 } else {

  sc->sc_stat = tpm_status(sc);
  if (!err && (sc->sc_stat & TPM_STS_DATA_EXPECT)) {




   rv = EIO;
  }

  bus_space_write_1(sc->sc_bt, sc->sc_bh, TPM_STS,
      err ? TPM_STS_CMD_READY : TPM_STS_GO);
 }

 return rv;
}
