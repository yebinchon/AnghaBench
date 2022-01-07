
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource_list_entry {struct resource* res; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct pcicfg_iov {int iov_num_vfs; int rman; TYPE_2__* iov_bar; scalar_t__ iov_pos; } ;
struct TYPE_3__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; struct resource_list resources; } ;
typedef int rman_res_t ;
struct TYPE_4__ {int bar_size; int bar_shift; struct resource* res; } ;


 int ENXIO ;
 scalar_t__ PCIR_SRIOV_BAR (int) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int pci_mapsize (int) ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int ,scalar_t__) ;
 int rman_get_end (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_manage_region (int *,int ,int ) ;

__attribute__((used)) static int
pci_iov_alloc_bar_ea(struct pci_devinfo *dinfo, int bar)
{
 struct pcicfg_iov *iov;
 rman_res_t start, end;
 struct resource *res;
 struct resource_list *rl;
 struct resource_list_entry *rle;

 rl = &dinfo->resources;
 iov = dinfo->cfg.iov;

 rle = resource_list_find(rl, SYS_RES_MEMORY,
     iov->iov_pos + PCIR_SRIOV_BAR(bar));
 if (rle == ((void*)0))
  rle = resource_list_find(rl, SYS_RES_IOPORT,
      iov->iov_pos + PCIR_SRIOV_BAR(bar));
 if (rle == ((void*)0))
  return (ENXIO);
 res = rle->res;

 iov->iov_bar[bar].res = res;
 iov->iov_bar[bar].bar_size = rman_get_size(res) / iov->iov_num_vfs;
 iov->iov_bar[bar].bar_shift = pci_mapsize(iov->iov_bar[bar].bar_size);

 start = rman_get_start(res);
 end = rman_get_end(res);

 return (rman_manage_region(&iov->rman, start, end));
}
