
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct pcicfg_iov {int iov_pos; int rman; TYPE_2__* iov_bar; int iov_num_vfs; } ;
struct TYPE_3__ {int dev; struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int rman_res_t ;
typedef int pci_addr_t ;
typedef int device_t ;
struct TYPE_4__ {int bar_size; int bar_shift; struct resource* res; } ;


 int ENXIO ;
 int PCIR_SRIOV_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 struct resource* pci_alloc_multi_resource (int ,int ,int ,int*,int ,int ,int,int ,int ) ;
 int rman_get_end (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_manage_region (int *,int ,int ) ;

__attribute__((used)) static int
pci_iov_alloc_bar(struct pci_devinfo *dinfo, int bar, pci_addr_t bar_shift)
{
 struct resource *res;
 struct pcicfg_iov *iov;
 device_t dev, bus;
 rman_res_t start, end;
 pci_addr_t bar_size;
 int rid;

 iov = dinfo->cfg.iov;
 dev = dinfo->cfg.dev;
 bus = device_get_parent(dev);
 rid = iov->iov_pos + PCIR_SRIOV_BAR(bar);
 bar_size = 1 << bar_shift;

 res = pci_alloc_multi_resource(bus, dev, SYS_RES_MEMORY, &rid, 0,
     ~0, 1, iov->iov_num_vfs, RF_ACTIVE);

 if (res == ((void*)0))
  return (ENXIO);

 iov->iov_bar[bar].res = res;
 iov->iov_bar[bar].bar_size = bar_size;
 iov->iov_bar[bar].bar_shift = bar_shift;

 start = rman_get_start(res);
 end = rman_get_end(res);
 return (rman_manage_region(&iov->rman, start, end));
}
