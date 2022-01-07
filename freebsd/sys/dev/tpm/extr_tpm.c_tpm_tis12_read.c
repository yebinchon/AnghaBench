
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {int sc_bh; int sc_bt; int sc_read; } ;


 int MIN (int,int) ;
 int TPM_DATA ;
 int TPM_PARAM_SIZE ;
 int TPM_READ_TMO ;
 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_VALID ;
 int bus_space_read_1 (int ,int ,int ) ;
 int printf (char*,size_t,...) ;
 int tpm_getburst (struct tpm_softc*) ;
 int tpm_waitfor (struct tpm_softc*,int,int ,int ) ;

int
tpm_tis12_read(struct tpm_softc *sc, void *buf, int len, size_t *count,
    int flags)
{
 u_int8_t *p = buf;
 size_t cnt;
 int rv, n, bcnt;




 cnt = 0;
 while (len > 0) {
  if ((rv = tpm_waitfor(sc, TPM_STS_DATA_AVAIL | TPM_STS_VALID,
      TPM_READ_TMO, sc->sc_read)))
   return rv;

  bcnt = tpm_getburst(sc);
  n = MIN(len, bcnt);



  for (; n--; len--) {
   *p++ = bus_space_read_1(sc->sc_bt, sc->sc_bh, TPM_DATA);
   cnt++;
  }

  if ((flags & TPM_PARAM_SIZE) == 0 && cnt >= 6)
   break;
 }




 if (count)
  *count = cnt;

 return 0;
}
