
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct bhnd_softc {int dummy; } ;
struct bhnd_core_clkctl {int dummy; } ;
typedef scalar_t__ device_t ;


 int BHND_ASSERT_CLKCTL_AVAIL (struct bhnd_core_clkctl*) ;
 int BHND_CCS_ERSRC_MAX ;
 int BHND_CCS_ERSRC_REQ ;
 int BHND_CCS_SET_BITS (int,int ) ;
 int BHND_CLKCTL_LOCK (struct bhnd_core_clkctl*) ;
 int BHND_CLKCTL_SET_4 (struct bhnd_core_clkctl*,int,int ) ;
 int BHND_CLKCTL_UNLOCK (struct bhnd_core_clkctl*) ;
 int EINVAL ;
 struct bhnd_core_clkctl* bhnd_get_pmu_info (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct bhnd_softc* device_get_softc (scalar_t__) ;
 int panic (char*) ;

int
bhnd_generic_release_ext_rsrc(device_t dev, device_t child, u_int rsrc)
{
 struct bhnd_softc *sc;
 struct bhnd_core_clkctl *clkctl;
 uint32_t mask;

 sc = device_get_softc(dev);

 if (device_get_parent(child) != dev)
  return (EINVAL);

 if ((clkctl = bhnd_get_pmu_info(child)) == ((void*)0))
  panic("no active PMU allocation");


 BHND_ASSERT_CLKCTL_AVAIL(clkctl);

 sc = device_get_softc(dev);

 if (rsrc > BHND_CCS_ERSRC_MAX)
  return (EINVAL);

 mask = BHND_CCS_SET_BITS((1<<rsrc), BHND_CCS_ERSRC_REQ);


 BHND_CLKCTL_LOCK(clkctl);
 BHND_CLKCTL_SET_4(clkctl, 0x0, mask);
 BHND_CLKCTL_UNLOCK(clkctl);

 return (0);
}
