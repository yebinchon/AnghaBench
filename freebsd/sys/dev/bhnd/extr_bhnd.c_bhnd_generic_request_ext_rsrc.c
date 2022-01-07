
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
 int BHND_CCS_ERSRC_STS ;
 int BHND_CCS_SET_BITS (int,int ) ;
 int BHND_CLKCTL_LOCK (struct bhnd_core_clkctl*) ;
 int BHND_CLKCTL_SET_4 (struct bhnd_core_clkctl*,int ,int ) ;
 int BHND_CLKCTL_UNLOCK (struct bhnd_core_clkctl*) ;
 int EINVAL ;
 int bhnd_core_clkctl_wait (struct bhnd_core_clkctl*,int ,int ) ;
 struct bhnd_core_clkctl* bhnd_get_pmu_info (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct bhnd_softc* device_get_softc (scalar_t__) ;
 int panic (char*) ;

int
bhnd_generic_request_ext_rsrc(device_t dev, device_t child, u_int rsrc)
{
 struct bhnd_softc *sc;
 struct bhnd_core_clkctl *clkctl;
 uint32_t req;
 uint32_t avail;
 int error;

 sc = device_get_softc(dev);

 if (device_get_parent(child) != dev)
  return (EINVAL);

 if ((clkctl = bhnd_get_pmu_info(child)) == ((void*)0))
  panic("no active PMU allocation");

 BHND_ASSERT_CLKCTL_AVAIL(clkctl);

 sc = device_get_softc(dev);

 if (rsrc > BHND_CCS_ERSRC_MAX)
  return (EINVAL);

 req = BHND_CCS_SET_BITS((1<<rsrc), BHND_CCS_ERSRC_REQ);
 avail = BHND_CCS_SET_BITS((1<<rsrc), BHND_CCS_ERSRC_STS);

 BHND_CLKCTL_LOCK(clkctl);


 BHND_CLKCTL_SET_4(clkctl, req, req);


 error = bhnd_core_clkctl_wait(clkctl, avail, avail);

 BHND_CLKCTL_UNLOCK(clkctl);

 return (error);
}
