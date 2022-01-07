
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int AGP_DPF (char*) ;
 scalar_t__ AGP_MODE_GET_MODE_3 (int ) ;
 scalar_t__ AGP_STATUS ;
 int ENXIO ;
 scalar_t__ agp_find_caps (int ) ;
 int agp_find_display () ;
 int agp_v2_enable (int ,int ,int ) ;
 int agp_v3_enable (int ,int ,int ) ;
 int pci_read_config (int ,scalar_t__,int) ;

int
agp_generic_enable(device_t dev, u_int32_t mode)
{
 device_t mdev = agp_find_display();
 u_int32_t tstatus, mstatus;

 if (!mdev) {
  AGP_DPF("can't find display\n");
  return ENXIO;
 }

 tstatus = pci_read_config(dev, agp_find_caps(dev) + AGP_STATUS, 4);
 mstatus = pci_read_config(mdev, agp_find_caps(mdev) + AGP_STATUS, 4);
 if (AGP_MODE_GET_MODE_3(mode) &&
     AGP_MODE_GET_MODE_3(tstatus) &&
     AGP_MODE_GET_MODE_3(mstatus))
  return (agp_v3_enable(dev, mdev, mode));
 else
  return (agp_v2_enable(dev, mdev, mode));
}
