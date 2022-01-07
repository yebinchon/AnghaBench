
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_chipid {scalar_t__ chip_id; scalar_t__ chip_pkg; } ;
struct bcm_platform {struct bhnd_chipid cid; } ;
typedef int device_t ;


 scalar_t__ BHND_CHIPID_BCM4706 ;
 scalar_t__ BHND_COREID_4706_GMAC ;
 scalar_t__ BHND_PKGID_BCM4706L ;
 struct bcm_platform* bcm_get_platform () ;
 scalar_t__ bhnd_get_core_unit (int ) ;
 scalar_t__ bhnd_get_device (int ) ;

__attribute__((used)) static bool
bhnd_nexus_is_hw_disabled(device_t dev, device_t child)
{
 struct bcm_platform *bp;
 struct bhnd_chipid *cid;

 bp = bcm_get_platform();
 cid = &bp->cid;



 if (cid->chip_id == BHND_CHIPID_BCM4706 &&
     cid->chip_pkg == BHND_PKGID_BCM4706L &&
     bhnd_get_device(child) == BHND_COREID_4706_GMAC &&
     bhnd_get_core_unit(child) != 0)
 {
  return (1);
 }

 return (0);
}
