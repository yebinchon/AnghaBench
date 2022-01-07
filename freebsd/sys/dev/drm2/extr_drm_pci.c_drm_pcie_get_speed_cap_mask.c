
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dev; } ;
typedef int device_t ;


 int DRM_INFO (char*,scalar_t__,int ,int,int) ;
 int DRM_PCIE_SPEED_25 ;
 int DRM_PCIE_SPEED_50 ;
 int DRM_PCIE_SPEED_80 ;
 int EINVAL ;
 int PCIEM_LINK_CAP_MAX_SPEED ;
 scalar_t__ PCIER_LINK_CAP ;
 scalar_t__ PCIER_LINK_CAP2 ;
 int PCIY_EXPRESS ;
 int PCI_EXP_LNKCAP2_SLS_2_5GB ;
 int PCI_EXP_LNKCAP2_SLS_5_0GB ;
 int PCI_EXP_LNKCAP2_SLS_8_0GB ;
 scalar_t__ PCI_VENDOR_ID_SERVERWORKS ;
 scalar_t__ PCI_VENDOR_ID_VIA ;
 int device_get_parent (int ) ;
 int drm_pci_device_is_pcie (struct drm_device*) ;
 int pci_find_cap (int ,int ,int*) ;
 int pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;

int drm_pcie_get_speed_cap_mask(struct drm_device *dev, u32 *mask)
{
 device_t root;
 int pos;
 u32 lnkcap = 0, lnkcap2 = 0;

 *mask = 0;
 if (!drm_pci_device_is_pcie(dev))
  return -EINVAL;

 root =
     device_get_parent(
     device_get_parent(
     device_get_parent(
     dev->dev)));

 pos = 0;
 pci_find_cap(root, PCIY_EXPRESS, &pos);
 if (!pos)
  return -EINVAL;


 if (pci_get_vendor(root) == PCI_VENDOR_ID_VIA ||
     pci_get_vendor(root) == PCI_VENDOR_ID_SERVERWORKS)
  return -EINVAL;

 lnkcap = pci_read_config(root, pos + PCIER_LINK_CAP, 4);
 lnkcap2 = pci_read_config(root, pos + PCIER_LINK_CAP2, 4);

 lnkcap &= PCIEM_LINK_CAP_MAX_SPEED;
 lnkcap2 &= 0xfe;





 if (lnkcap2) {
  if (lnkcap2 & 0x02)
   *mask |= DRM_PCIE_SPEED_25;
  if (lnkcap2 & 0x04)
   *mask |= DRM_PCIE_SPEED_50;
  if (lnkcap2 & 0x08)
   *mask |= DRM_PCIE_SPEED_80;
 } else {
  if (lnkcap & 1)
   *mask |= DRM_PCIE_SPEED_25;
  if (lnkcap & 2)
   *mask |= DRM_PCIE_SPEED_50;
 }

 DRM_INFO("probing gen 2 caps for device %x:%x = %x/%x\n", pci_get_vendor(root), pci_get_device(root), lnkcap, lnkcap2);
 return 0;
}
