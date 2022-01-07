
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_7__ {int pc_domain; int pc_bus; int pc_dev; int pc_func; } ;
struct TYPE_8__ {int pc_hdr; int pc_class; int pc_subclass; int pc_progif; int pc_revid; void* pc_device; void* pc_vendor; int pc_subdevice; int pc_subvendor; TYPE_1__ pc_sel; } ;
struct TYPE_9__ {int domain; int bus; int slot; int func; int cmdreg; int statreg; int baseclass; int subclass; int progif; int revid; int hdrtype; int cachelnsz; int lattimer; int intpin; int intline; int mfdev; void* device; void* vendor; int subdevice; int subvendor; int * iov; int maps; } ;
struct pci_devinfo {TYPE_2__ conf; TYPE_3__ cfg; } ;
typedef TYPE_3__ pcicfgregs ;
typedef int device_t ;


 int PCIM_MFDEV ;
 int PCIM_STATUS_CAPPRESENT ;
 int PCIR_CACHELNSZ ;
 int PCIR_CLASS ;
 int PCIR_COMMAND ;
 int PCIR_HDRTYPE ;
 int PCIR_INTLINE ;
 int PCIR_INTPIN ;
 int PCIR_LATTIMER ;
 int PCIR_PROGIF ;
 int PCIR_REVID ;
 int PCIR_STATUS ;
 int PCIR_SUBCLASS ;
 struct pci_devinfo* PCI_ALLOC_DEVINFO (int ) ;
 int REG (int ,int) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct pci_devinfo*,int ) ;
 int pci_devq ;
 int pci_fixancient (TYPE_3__*) ;
 int pci_generation ;
 int pci_hdrtypedata (int ,int,int,int,TYPE_3__*) ;
 int pci_links ;
 int pci_numdevs ;
 int pci_read_cap (int ,TYPE_3__*) ;

__attribute__((used)) static struct pci_devinfo *
pci_fill_devinfo(device_t pcib, device_t bus, int d, int b, int s, int f,
    uint16_t vid, uint16_t did)
{
 struct pci_devinfo *devlist_entry;
 pcicfgregs *cfg;

 devlist_entry = PCI_ALLOC_DEVINFO(bus);

 cfg = &devlist_entry->cfg;

 cfg->domain = d;
 cfg->bus = b;
 cfg->slot = s;
 cfg->func = f;
 cfg->vendor = vid;
 cfg->device = did;
 cfg->cmdreg = REG(PCIR_COMMAND, 2);
 cfg->statreg = REG(PCIR_STATUS, 2);
 cfg->baseclass = REG(PCIR_CLASS, 1);
 cfg->subclass = REG(PCIR_SUBCLASS, 1);
 cfg->progif = REG(PCIR_PROGIF, 1);
 cfg->revid = REG(PCIR_REVID, 1);
 cfg->hdrtype = REG(PCIR_HDRTYPE, 1);
 cfg->cachelnsz = REG(PCIR_CACHELNSZ, 1);
 cfg->lattimer = REG(PCIR_LATTIMER, 1);
 cfg->intpin = REG(PCIR_INTPIN, 1);
 cfg->intline = REG(PCIR_INTLINE, 1);

 cfg->mfdev = (cfg->hdrtype & PCIM_MFDEV) != 0;
 cfg->hdrtype &= ~PCIM_MFDEV;
 STAILQ_INIT(&cfg->maps);

 cfg->iov = ((void*)0);

 pci_fixancient(cfg);
 pci_hdrtypedata(pcib, b, s, f, cfg);

 if (REG(PCIR_STATUS, 2) & PCIM_STATUS_CAPPRESENT)
  pci_read_cap(pcib, cfg);

 STAILQ_INSERT_TAIL(&pci_devq, devlist_entry, pci_links);

 devlist_entry->conf.pc_sel.pc_domain = cfg->domain;
 devlist_entry->conf.pc_sel.pc_bus = cfg->bus;
 devlist_entry->conf.pc_sel.pc_dev = cfg->slot;
 devlist_entry->conf.pc_sel.pc_func = cfg->func;
 devlist_entry->conf.pc_hdr = cfg->hdrtype;

 devlist_entry->conf.pc_subvendor = cfg->subvendor;
 devlist_entry->conf.pc_subdevice = cfg->subdevice;
 devlist_entry->conf.pc_vendor = cfg->vendor;
 devlist_entry->conf.pc_device = cfg->device;

 devlist_entry->conf.pc_class = cfg->baseclass;
 devlist_entry->conf.pc_subclass = cfg->subclass;
 devlist_entry->conf.pc_progif = cfg->progif;
 devlist_entry->conf.pc_revid = cfg->revid;

 pci_numdevs++;
 pci_generation++;

 return (devlist_entry);
}
