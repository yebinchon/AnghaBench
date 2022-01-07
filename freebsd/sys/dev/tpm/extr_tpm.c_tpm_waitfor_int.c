
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tpm_softc {int sc_stat; int sc_bh; int sc_bt; } ;


 int PCATCH ;
 int PRIBIO ;
 int TPM_GLOBAL_INT_ENABLE ;
 int TPM_INTERRUPT_ENABLE ;
 int TPM_STS_BITS ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int printf (char*,int,int,...) ;
 int tpm_status (struct tpm_softc*) ;
 int tpm_tmotohz (int) ;
 int tsleep (void*,int,char*,int) ;

int
tpm_waitfor_int(struct tpm_softc *sc, u_int8_t mask, int tmo, void *c,
    int inttype)
{
 int rv, to;


 sc->sc_stat = tpm_status(sc);
 if ((sc->sc_stat & mask) == mask)
  return 0;






 bus_space_write_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE,
     bus_space_read_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE) |
     inttype);
 bus_space_write_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE,
     bus_space_read_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE) |
     TPM_GLOBAL_INT_ENABLE);





 sc->sc_stat = tpm_status(sc);
 if ((sc->sc_stat & mask) == mask) {
  rv = 0;
  goto out;
 }

 to = tpm_tmotohz(tmo);
 rv = tsleep(c, PRIBIO | PCATCH, "tpm_intr", to);

 sc->sc_stat = tpm_status(sc);




 if ((sc->sc_stat & mask) == mask)
  rv = 0;


out: bus_space_write_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE,
     bus_space_read_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE) &
     ~TPM_GLOBAL_INT_ENABLE);
 bus_space_write_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE,
     bus_space_read_4(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE) &
     ~inttype);

 return rv;
}
