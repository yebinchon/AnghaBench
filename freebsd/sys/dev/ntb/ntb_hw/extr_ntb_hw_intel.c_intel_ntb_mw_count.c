
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ntb_softc {scalar_t__ b2b_mw_idx; scalar_t__ b2b_off; scalar_t__ msix_mw_idx; int mw_count; } ;
typedef int device_t ;


 scalar_t__ B2B_MW_DISABLED ;
 struct ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
intel_ntb_mw_count(device_t dev)
{
 struct ntb_softc *ntb = device_get_softc(dev);
 uint8_t res;

 res = ntb->mw_count;
 if (ntb->b2b_mw_idx != B2B_MW_DISABLED && ntb->b2b_off == 0)
  res--;
 if (ntb->msix_mw_idx != B2B_MW_DISABLED)
  res--;
 return (res);
}
