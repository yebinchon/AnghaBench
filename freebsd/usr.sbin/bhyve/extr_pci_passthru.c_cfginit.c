
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct pcisel {int dummy; } ;
struct pci_devinst {struct passthru_softc* pi_arg; } ;
struct TYPE_3__ {int pc_bus; int pc_dev; int pc_func; } ;
struct passthru_softc {TYPE_1__ psc_sel; } ;


 int PCIR_COMMAND ;
 int bzero (TYPE_1__*,int) ;
 scalar_t__ cfginitbar (struct vmctx*,struct passthru_softc*) ;
 scalar_t__ cfginitmsi (struct passthru_softc*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int read_config (TYPE_1__*,int ,int) ;
 int warnx (char*,int,int,int) ;

__attribute__((used)) static int
cfginit(struct vmctx *ctx, struct pci_devinst *pi, int bus, int slot, int func)
{
 int error;
 struct passthru_softc *sc;

 error = 1;
 sc = pi->pi_arg;

 bzero(&sc->psc_sel, sizeof(struct pcisel));
 sc->psc_sel.pc_bus = bus;
 sc->psc_sel.pc_dev = slot;
 sc->psc_sel.pc_func = func;

 if (cfginitmsi(sc) != 0) {
  warnx("failed to initialize MSI for PCI %d/%d/%d",
      bus, slot, func);
  goto done;
 }

 if (cfginitbar(ctx, sc) != 0) {
  warnx("failed to initialize BARs for PCI %d/%d/%d",
      bus, slot, func);
  goto done;
 }

 pci_set_cfgdata16(pi, PCIR_COMMAND, read_config(&sc->psc_sel,
     PCIR_COMMAND, 2));

 error = 0;
done:
 return (error);
}
