
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct vmctx {int dummy; } ;
struct TYPE_10__ {int table_count; TYPE_3__* table; scalar_t__ enabled; } ;
struct TYPE_7__ {int maxmsgnum; int msg_data; int addr; } ;
struct pci_devinst {TYPE_4__ pi_msix; TYPE_1__ pi_msi; struct passthru_softc* pi_arg; } ;
struct TYPE_12__ {int pc_func; int pc_dev; int pc_bus; } ;
struct TYPE_11__ {scalar_t__ emulated; int capoff; } ;
struct TYPE_8__ {int capoff; } ;
struct passthru_softc {TYPE_6__ psc_sel; TYPE_5__ psc_msi; TYPE_2__ psc_msix; } ;
struct TYPE_9__ {int vector_control; int msg_data; int addr; } ;


 int PCIM_CMD_INTxDIS ;
 int PCIR_COMMAND ;
 scalar_t__ bar_access (int) ;
 int err (int,char*) ;
 scalar_t__ msicap_access (struct passthru_softc*,int) ;
 int msicap_cfgwrite (struct pci_devinst*,int ,int,int,int ) ;
 scalar_t__ msixcap_access (struct passthru_softc*,int) ;
 int msixcap_cfgwrite (struct pci_devinst*,int ,int,int,int ) ;
 int pci_emul_cmd_changed (struct pci_devinst*,int ) ;
 int pci_get_cfgdata16 (struct pci_devinst*,int) ;
 scalar_t__ pci_msi_enabled (struct pci_devinst*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int,int ) ;
 int vm_setup_pptdev_msi (struct vmctx*,int,int ,int ,int ,int ,int ,int ) ;
 int vm_setup_pptdev_msix (struct vmctx*,int,int ,int ,int ,int,int ,int ,int ) ;
 int write_config (TYPE_6__*,int,int,int ) ;

__attribute__((used)) static int
passthru_cfgwrite(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
    int coff, int bytes, uint32_t val)
{
 int error, msix_table_entries, i;
 struct passthru_softc *sc;
 uint16_t cmd_old;

 sc = pi->pi_arg;




 if (bar_access(coff))
  return (-1);




 if (msicap_access(sc, coff)) {
  msicap_cfgwrite(pi, sc->psc_msi.capoff, coff, bytes, val);

  error = vm_setup_pptdev_msi(ctx, vcpu, sc->psc_sel.pc_bus,
   sc->psc_sel.pc_dev, sc->psc_sel.pc_func,
   pi->pi_msi.addr, pi->pi_msi.msg_data,
   pi->pi_msi.maxmsgnum);
  if (error != 0)
   err(1, "vm_setup_pptdev_msi");
  return (0);
 }

 if (msixcap_access(sc, coff)) {
  msixcap_cfgwrite(pi, sc->psc_msix.capoff, coff, bytes, val);
  if (pi->pi_msix.enabled) {
   msix_table_entries = pi->pi_msix.table_count;
   for (i = 0; i < msix_table_entries; i++) {
    error = vm_setup_pptdev_msix(ctx, vcpu,
        sc->psc_sel.pc_bus, sc->psc_sel.pc_dev,
        sc->psc_sel.pc_func, i,
        pi->pi_msix.table[i].addr,
        pi->pi_msix.table[i].msg_data,
        pi->pi_msix.table[i].vector_control);

    if (error)
     err(1, "vm_setup_pptdev_msix");
   }
  }
  return (0);
 }
 write_config(&sc->psc_sel, coff, bytes, val);
 if (coff == PCIR_COMMAND) {
  cmd_old = pci_get_cfgdata16(pi, PCIR_COMMAND);
  if (bytes == 1)
   pci_set_cfgdata8(pi, PCIR_COMMAND, val);
  else if (bytes == 2)
   pci_set_cfgdata16(pi, PCIR_COMMAND, val);
  pci_emul_cmd_changed(pi, cmd_old);
 }

 return (0);
}
