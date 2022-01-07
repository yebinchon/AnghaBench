
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {int sc_bahm; int sc_batm; } ;


 int DELAY (int ) ;
 int TPM_BUFSIZ ;
 int TPM_LEGACY_DELAY ;
 int TPM_LEGACY_LAST ;
 int bus_space_write_1 (int ,int ,int,int ) ;

int
tpm_legacy_write(struct tpm_softc *sc, void *buf, int len)
{
 u_int8_t *p;
 int n;

 for (p = buf, n = len; n--; DELAY(TPM_LEGACY_DELAY)) {
  if (!n && len != TPM_BUFSIZ) {
   bus_space_write_1(sc->sc_batm, sc->sc_bahm, 1,
       TPM_LEGACY_LAST);
   DELAY(TPM_LEGACY_DELAY);
  }
  bus_space_write_1(sc->sc_batm, sc->sc_bahm, 0, *p++);
 }

 return 0;
}
