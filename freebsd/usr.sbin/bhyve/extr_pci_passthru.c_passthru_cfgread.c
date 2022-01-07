
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct pci_devinst {struct passthru_softc* pi_arg; } ;
struct TYPE_2__ {scalar_t__ emulated; } ;
struct passthru_softc {int psc_sel; TYPE_1__ psc_msi; } ;


 int PCIR_CAP_PTR ;
 scalar_t__ bar_access (int) ;
 scalar_t__ msicap_access (struct passthru_softc*,int) ;
 int read_config (int *,int,int) ;

__attribute__((used)) static int
passthru_cfgread(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
   int coff, int bytes, uint32_t *rv)
{
 struct passthru_softc *sc;

 sc = pi->pi_arg;




 if (bar_access(coff) || msicap_access(sc, coff))
  return (-1);
 *rv = read_config(&sc->psc_sel, coff, bytes);

 return (0);
}
