
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
struct ntb_softc {struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {int map_mode; } ;
typedef int device_t ;


 int EINVAL ;
 struct ntb_softc* device_get_softc (int ) ;
 unsigned int intel_ntb_mw_count (int ) ;
 size_t intel_ntb_mw_to_bar (struct ntb_softc*,unsigned int) ;
 unsigned int intel_ntb_user_mw_to_idx (struct ntb_softc*,unsigned int) ;

__attribute__((used)) static int
intel_ntb_mw_get_wc(device_t dev, unsigned idx, vm_memattr_t *mode)
{
 struct ntb_softc *ntb = device_get_softc(dev);
 struct ntb_pci_bar_info *bar;

 if (idx >= intel_ntb_mw_count(dev))
  return (EINVAL);
 idx = intel_ntb_user_mw_to_idx(ntb, idx);

 bar = &ntb->bar_info[intel_ntb_mw_to_bar(ntb, idx)];
 *mode = bar->map_mode;
 return (0);
}
