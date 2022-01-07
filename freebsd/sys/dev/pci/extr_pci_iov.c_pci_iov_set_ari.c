
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int * device_t ;


 int ENXIO ;
 int KASSERT (int ,char*) ;
 int M_TEMP ;
 int PCIB_ARI_ENABLED (int ) ;
 int PCIM_SRIOV_ARI_EN ;
 scalar_t__ PCIR_SRIOV_CTL ;
 int PCIZ_SRIOV ;
 int device_get_children (int *,int ***,int*) ;
 int device_get_nameunit (int *) ;
 int device_get_parent (int *) ;
 int device_printf (int *,char*) ;
 int free (int **,int ) ;
 scalar_t__ pci_find_extcap (int *,int ,int*) ;
 int pci_get_function (int *) ;
 int pci_read_config (int *,scalar_t__,int) ;
 int pci_write_config (int *,scalar_t__,int,int) ;

__attribute__((used)) static int
pci_iov_set_ari(device_t bus)
{
 device_t lowest;
 device_t *devlist;
 int i, error, devcount, lowest_func, lowest_pos, iov_pos, dev_func;
 uint16_t iov_ctl;


 if (!PCIB_ARI_ENABLED(device_get_parent(bus)))
  return (0);

 error = device_get_children(bus, &devlist, &devcount);

 if (error != 0)
  return (error);

 lowest = ((void*)0);
 for (i = 0; i < devcount; i++) {
  if (pci_find_extcap(devlist[i], PCIZ_SRIOV, &iov_pos) == 0) {
   dev_func = pci_get_function(devlist[i]);
   if (lowest == ((void*)0) || dev_func < lowest_func) {
    lowest = devlist[i];
    lowest_func = dev_func;
    lowest_pos = iov_pos;
   }
  }
 }
 free(devlist, M_TEMP);





 KASSERT(lowest != ((void*)0),
     ("Could not find child of %s with SR-IOV capability",
     device_get_nameunit(bus)));

 iov_ctl = pci_read_config(lowest, lowest_pos + PCIR_SRIOV_CTL, 2);
 iov_ctl |= PCIM_SRIOV_ARI_EN;
 pci_write_config(lowest, lowest_pos + PCIR_SRIOV_CTL, iov_ctl, 2);
 if ((pci_read_config(lowest, lowest_pos + PCIR_SRIOV_CTL, 2) &
     PCIM_SRIOV_ARI_EN) == 0) {
  device_printf(lowest, "failed to enable ARI\n");
  return (ENXIO);
 }
 return (0);
}
