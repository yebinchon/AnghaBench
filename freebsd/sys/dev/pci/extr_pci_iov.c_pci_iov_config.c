
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct pcicfg_iov {int iov_flags; int iov_num_vfs; int rman; TYPE_2__* iov_bar; scalar_t__ iov_pos; } ;
struct pci_iov_arg {int dummy; } ;
struct TYPE_3__ {int dev; struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
struct cdev {struct pci_devinfo* si_drv1; } ;
typedef int nvlist_t ;
typedef int device_t ;
struct TYPE_4__ {int * res; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOSPC ;
 int Giant ;
 int IOV_BUSY ;
 int IOV_READ (struct pci_devinfo*,int ,int) ;
 int IOV_RMAN_INITED ;
 int IOV_WRITE (struct pci_devinfo*,int ,int,int) ;
 int PCIM_SRIOV_VF_EN ;
 int PCIM_SRIOV_VF_MSE ;
 int PCIR_MAX_BAR_0 ;
 scalar_t__ PCIR_SRIOV_BAR (int) ;
 int PCIR_SRIOV_CTL ;
 int PCIR_SRIOV_NUM_VFS ;
 int PCIR_SRIOV_TOTAL_VFS ;
 int PCIR_SRIOV_VF_OFF ;
 int PCIR_SRIOV_VF_STRIDE ;
 int PCI_IOV_UNINIT (int ) ;
 scalar_t__ PCI_RID2BUS (int) ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvlist_destroy (int *) ;
 int pause (char*,int ) ;
 int pci_delete_resource (int ,int ,int ,scalar_t__) ;
 scalar_t__ pci_get_bus (int ) ;
 int pci_get_rid (int ) ;
 int pci_iov_config_get_num_vfs (int *) ;
 int pci_iov_config_page_size (struct pci_devinfo*) ;
 int pci_iov_enumerate_vfs (struct pci_devinfo*,int *,int,int) ;
 int pci_iov_init (int ,int,int *) ;
 int pci_iov_init_rman (int ,struct pcicfg_iov*) ;
 int pci_iov_parse_config (struct pcicfg_iov*,struct pci_iov_arg*,int **) ;
 int pci_iov_set_ari (int ) ;
 int pci_iov_setup_bars (struct pci_devinfo*) ;
 int pci_release_resource (int ,int ,int ,scalar_t__,int *) ;
 int rman_fini (int *) ;
 int roundup (int ,int) ;

__attribute__((used)) static int
pci_iov_config(struct cdev *cdev, struct pci_iov_arg *arg)
{
 device_t bus, dev;
 struct pci_devinfo *dinfo;
 struct pcicfg_iov *iov;
 nvlist_t *config;
 int i, error;
 uint16_t rid_off, rid_stride;
 uint16_t first_rid, last_rid;
 uint16_t iov_ctl;
 uint16_t num_vfs, total_vfs;
 int iov_inited;

 mtx_lock(&Giant);
 dinfo = cdev->si_drv1;
 iov = dinfo->cfg.iov;
 dev = dinfo->cfg.dev;
 bus = device_get_parent(dev);
 iov_inited = 0;
 config = ((void*)0);

 if ((iov->iov_flags & IOV_BUSY) || iov->iov_num_vfs != 0) {
  mtx_unlock(&Giant);
  return (EBUSY);
 }
 iov->iov_flags |= IOV_BUSY;

 error = pci_iov_parse_config(iov, arg, &config);
 if (error != 0)
  goto out;

 num_vfs = pci_iov_config_get_num_vfs(config);
 total_vfs = IOV_READ(dinfo, PCIR_SRIOV_TOTAL_VFS, 2);
 if (num_vfs > total_vfs) {
  error = EINVAL;
  goto out;
 }

 error = pci_iov_config_page_size(dinfo);
 if (error != 0)
  goto out;

 error = pci_iov_set_ari(bus);
 if (error != 0)
  goto out;

 error = pci_iov_init(dev, num_vfs, config);
 if (error != 0)
  goto out;
 iov_inited = 1;

 IOV_WRITE(dinfo, PCIR_SRIOV_NUM_VFS, num_vfs, 2);

 rid_off = IOV_READ(dinfo, PCIR_SRIOV_VF_OFF, 2);
 rid_stride = IOV_READ(dinfo, PCIR_SRIOV_VF_STRIDE, 2);

 first_rid = pci_get_rid(dev) + rid_off;
 last_rid = first_rid + (num_vfs - 1) * rid_stride;


 if (pci_get_bus(dev) != PCI_RID2BUS(last_rid)) {
  error = ENOSPC;
  goto out;
 }

 iov_ctl = IOV_READ(dinfo, PCIR_SRIOV_CTL, 2);
 iov_ctl &= ~(PCIM_SRIOV_VF_EN | PCIM_SRIOV_VF_MSE);
 IOV_WRITE(dinfo, PCIR_SRIOV_CTL, iov_ctl, 2);

 error = pci_iov_init_rman(dev, iov);
 if (error != 0)
  goto out;

 iov->iov_num_vfs = num_vfs;

 error = pci_iov_setup_bars(dinfo);
 if (error != 0)
  goto out;

 iov_ctl = IOV_READ(dinfo, PCIR_SRIOV_CTL, 2);
 iov_ctl |= PCIM_SRIOV_VF_EN | PCIM_SRIOV_VF_MSE;
 IOV_WRITE(dinfo, PCIR_SRIOV_CTL, iov_ctl, 2);


 pause("iov", roundup(hz, 10));
 pci_iov_enumerate_vfs(dinfo, config, first_rid, rid_stride);

 nvlist_destroy(config);
 iov->iov_flags &= ~IOV_BUSY;
 mtx_unlock(&Giant);

 return (0);
out:
 if (iov_inited)
  PCI_IOV_UNINIT(dev);

 for (i = 0; i <= PCIR_MAX_BAR_0; i++) {
  if (iov->iov_bar[i].res != ((void*)0)) {
   pci_release_resource(bus, dev, SYS_RES_MEMORY,
       iov->iov_pos + PCIR_SRIOV_BAR(i),
       iov->iov_bar[i].res);
   pci_delete_resource(bus, dev, SYS_RES_MEMORY,
       iov->iov_pos + PCIR_SRIOV_BAR(i));
   iov->iov_bar[i].res = ((void*)0);
  }
 }

 if (iov->iov_flags & IOV_RMAN_INITED) {
  rman_fini(&iov->rman);
  iov->iov_flags &= ~IOV_RMAN_INITED;
 }

 nvlist_destroy(config);
 iov->iov_num_vfs = 0;
 iov->iov_flags &= ~IOV_BUSY;
 mtx_unlock(&Giant);
 return (error);
}
