
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcicfg_iov {scalar_t__ iov_num_vfs; int iov_flags; int iov_schema; int * iov_cdev; } ;
struct TYPE_2__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int EBUSY ;
 int Giant ;
 int IOV_BUSY ;
 int M_SRIOV ;
 int destroy_dev (int *) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int free (struct pcicfg_iov*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvlist_destroy (int ) ;

int
pci_iov_detach_method(device_t bus, device_t dev)
{
 struct pci_devinfo *dinfo;
 struct pcicfg_iov *iov;

 mtx_lock(&Giant);
 dinfo = device_get_ivars(dev);
 iov = dinfo->cfg.iov;

 if (iov == ((void*)0)) {
  mtx_unlock(&Giant);
  return (0);
 }

 if (iov->iov_num_vfs != 0 || iov->iov_flags & IOV_BUSY) {
  mtx_unlock(&Giant);
  return (EBUSY);
 }

 dinfo->cfg.iov = ((void*)0);

 if (iov->iov_cdev) {
  destroy_dev(iov->iov_cdev);
  iov->iov_cdev = ((void*)0);
 }
 nvlist_destroy(iov->iov_schema);

 free(iov, M_SRIOV);
 mtx_unlock(&Giant);

 return (0);
}
