
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
struct ntb_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 struct ntb_softc* device_get_softc (int ) ;
 unsigned int intel_ntb_mw_count (int ) ;
 int intel_ntb_mw_set_wc_internal (struct ntb_softc*,unsigned int,int ) ;
 unsigned int intel_ntb_user_mw_to_idx (struct ntb_softc*,unsigned int) ;

__attribute__((used)) static int
intel_ntb_mw_set_wc(device_t dev, unsigned idx, vm_memattr_t mode)
{
 struct ntb_softc *ntb = device_get_softc(dev);

 if (idx >= intel_ntb_mw_count(dev))
  return (EINVAL);

 idx = intel_ntb_user_mw_to_idx(ntb, idx);
 return (intel_ntb_mw_set_wc_internal(ntb, idx, mode));
}
