
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {int sc_bahm; int sc_batm; } ;


 int DELAY (int) ;
 int EIO ;
 int TPM_LEGACY_DA ;
 int TPM_LEGACY_DELAY ;
 int bus_space_read_1 (int ,int ,int) ;

int
tpm_legacy_read(struct tpm_softc *sc, void *buf, int len, size_t *count,
    int flags)
{
 u_int8_t *p;
 size_t cnt;
 int to, rv;

 cnt = rv = 0;
 for (p = buf; !rv && len > 0; len--) {
  for (to = 1000;
      !(bus_space_read_1(sc->sc_batm, sc->sc_bahm, 1) &
      TPM_LEGACY_DA); DELAY(1))
   if (!to--)
    return EIO;

  DELAY(TPM_LEGACY_DELAY);
  *p++ = bus_space_read_1(sc->sc_batm, sc->sc_bahm, 0);
  cnt++;
 }

 *count = cnt;
 return 0;
}
