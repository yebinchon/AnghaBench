
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* dv_xname; } ;
struct tpm_softc {int (* sc_init ) (struct tpm_softc*,scalar_t__,char*) ;int sc_powerhook; int sc_suspend; TYPE_1__ sc_dev; int sc_bh; int sc_bt; int * sc_ih; int sc_end; int sc_write; int sc_read; int sc_start; int sc_batm; } ;
struct isa_attach_args {scalar_t__ ia_irq; int ia_ic; int ia_maddr; int ia_memt; int ia_iot; int ia_iosize; int ia_iobase; } ;
typedef scalar_t__ device_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int IPL_TTY ;
 scalar_t__ IRQUNK ;
 int IST_EDGE ;
 int PWR_RESUME ;
 int TPM_SIZE ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_unmap (int ,int ,int ) ;
 int * isa_intr_establish (int ,scalar_t__,int ,int ,int ,struct tpm_softc*,char*) ;
 int powerhook_establish (int ,struct tpm_softc*) ;
 int printf (char*,...) ;
 int stub1 (struct tpm_softc*,scalar_t__,char*) ;
 int tpm_intr ;
 int tpm_legacy_end ;
 int tpm_legacy_init (struct tpm_softc*,scalar_t__,char*) ;
 scalar_t__ tpm_legacy_probe (int ,int ) ;
 int tpm_legacy_read ;
 int tpm_legacy_start ;
 int tpm_legacy_write ;
 int tpm_powerhook ;
 int tpm_tis12_end ;
 int tpm_tis12_init (struct tpm_softc*,scalar_t__,char*) ;
 int tpm_tis12_read ;
 int tpm_tis12_start ;
 int tpm_tis12_write ;

void
tpm_attach(device_t parent, device_t self, void *aux)
{
 struct tpm_softc *sc = (struct tpm_softc *)self;
 struct isa_attach_args *ia = aux;
 bus_addr_t iobase;
 bus_size_t size;
 int rv;

 if (tpm_legacy_probe(ia->ia_iot, ia->ia_iobase)) {
  sc->sc_bt = ia->ia_iot;
  iobase = ia->ia_iobase;
  size = ia->ia_iosize;
  sc->sc_batm = ia->ia_iot;
  sc->sc_init = tpm_legacy_init;
  sc->sc_start = tpm_legacy_start;
  sc->sc_read = tpm_legacy_read;
  sc->sc_write = tpm_legacy_write;
  sc->sc_end = tpm_legacy_end;
 } else {
  sc->sc_bt = ia->ia_memt;
  iobase = ia->ia_maddr;
  size = TPM_SIZE;
  sc->sc_init = tpm_tis12_init;
  sc->sc_start = tpm_tis12_start;
  sc->sc_read = tpm_tis12_read;
  sc->sc_write = tpm_tis12_write;
  sc->sc_end = tpm_tis12_end;
 }

 if (bus_space_map(sc->sc_bt, iobase, size, 0, &sc->sc_bh)) {
  printf(": cannot map registers\n");
  return;
 }

 if ((rv = (sc->sc_init)(sc, ia->ia_irq, sc->sc_dev.dv_xname))) {
  bus_space_unmap(sc->sc_bt, sc->sc_bh, size);
  return;
 }





 if (sc->sc_init == tpm_tis12_init && ia->ia_irq != IRQUNK &&
     (sc->sc_ih = isa_intr_establish(ia->ia_ic, ia->ia_irq, IST_EDGE,
     IPL_TTY, tpm_intr, sc, sc->sc_dev.dv_xname)) == ((void*)0)) {
  bus_space_unmap(sc->sc_bt, sc->sc_bh, TPM_SIZE);
  printf("%s: cannot establish interrupt\n",
      sc->sc_dev.dv_xname);
  return;
 }

 sc->sc_suspend = PWR_RESUME;
 sc->sc_powerhook = powerhook_establish(tpm_powerhook, sc);
}
