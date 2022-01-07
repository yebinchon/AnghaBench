
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pcicfg_iov {int iov_flags; scalar_t__ iov_num_vfs; int rman; TYPE_2__* iov_bar; scalar_t__ iov_pos; } ;
struct TYPE_3__ {int dev; struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
struct cdev {struct pci_devinfo* si_drv1; } ;
typedef int device_t ;
struct TYPE_4__ {int * res; } ;


 int EBUSY ;
 int ECHILD ;
 int Giant ;
 int IOV_BUSY ;
 int IOV_READ (struct pci_devinfo*,int ,int) ;
 int IOV_RMAN_INITED ;
 int IOV_WRITE (struct pci_devinfo*,int ,int,int) ;
 int M_TEMP ;
 int PCIM_SRIOV_VF_EN ;
 int PCIM_SRIOV_VF_MSE ;
 int PCIR_MAX_BAR_0 ;
 scalar_t__ PCIR_SRIOV_BAR (int) ;
 int PCIR_SRIOV_CTL ;
 int PCIR_SRIOV_NUM_VFS ;
 int PCI_IOV_UNINIT (int ) ;
 int SYS_RES_MEMORY ;
 int device_delete_child (int ,int ) ;
 int device_detach (int ) ;
 int device_get_children (int ,int **,int*) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int ) ;
 int free (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_delete_resource (int ,int ,int ,scalar_t__) ;
 scalar_t__ pci_iov_is_child_vf (struct pcicfg_iov*,int ) ;
 int pci_release_resource (int ,int ,int ,scalar_t__,int *) ;
 int rman_fini (int *) ;

__attribute__((used)) static int
pci_iov_delete(struct cdev *cdev)
{
 device_t bus, dev, vf, *devlist;
 struct pci_devinfo *dinfo;
 struct pcicfg_iov *iov;
 int i, error, devcount;
 uint32_t iov_ctl;

 mtx_lock(&Giant);
 dinfo = cdev->si_drv1;
 iov = dinfo->cfg.iov;
 dev = dinfo->cfg.dev;
 bus = device_get_parent(dev);
 devlist = ((void*)0);

 if (iov->iov_flags & IOV_BUSY) {
  mtx_unlock(&Giant);
  return (EBUSY);
 }

 if (iov->iov_num_vfs == 0) {
  mtx_unlock(&Giant);
  return (ECHILD);
 }

 iov->iov_flags |= IOV_BUSY;

 error = device_get_children(bus, &devlist, &devcount);

 if (error != 0)
  goto out;

 for (i = 0; i < devcount; i++) {
  vf = devlist[i];

  if (!pci_iov_is_child_vf(iov, vf))
   continue;

  error = device_detach(vf);
  if (error != 0) {
   device_printf(dev,
      "Could not disable SR-IOV: failed to detach VF %s\n",
       device_get_nameunit(vf));
   goto out;
  }
 }

 for (i = 0; i < devcount; i++) {
  vf = devlist[i];

  if (pci_iov_is_child_vf(iov, vf))
   device_delete_child(bus, vf);
 }
 PCI_IOV_UNINIT(dev);

 iov_ctl = IOV_READ(dinfo, PCIR_SRIOV_CTL, 2);
 iov_ctl &= ~(PCIM_SRIOV_VF_EN | PCIM_SRIOV_VF_MSE);
 IOV_WRITE(dinfo, PCIR_SRIOV_CTL, iov_ctl, 2);
 IOV_WRITE(dinfo, PCIR_SRIOV_NUM_VFS, 0, 2);

 iov->iov_num_vfs = 0;

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

 error = 0;
out:
 free(devlist, M_TEMP);
 iov->iov_flags &= ~IOV_BUSY;
 mtx_unlock(&Giant);
 return (error);
}
