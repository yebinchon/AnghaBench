
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcicfg_iov {int iov_ctl; int iov_num_vfs; int iov_page_size; } ;
struct TYPE_2__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int IOV_WRITE (struct pci_devinfo*,int ,int ,int) ;
 int PCIR_SRIOV_CTL ;
 int PCIR_SRIOV_NUM_VFS ;
 int PCIR_SRIOV_PAGE_SIZE ;

void
pci_iov_cfg_restore(device_t dev, struct pci_devinfo *dinfo)
{
 struct pcicfg_iov *iov;

 iov = dinfo->cfg.iov;

 IOV_WRITE(dinfo, PCIR_SRIOV_PAGE_SIZE, iov->iov_page_size, 4);
 IOV_WRITE(dinfo, PCIR_SRIOV_NUM_VFS, iov->iov_num_vfs, 2);
 IOV_WRITE(dinfo, PCIR_SRIOV_CTL, iov->iov_ctl, 2);
}
