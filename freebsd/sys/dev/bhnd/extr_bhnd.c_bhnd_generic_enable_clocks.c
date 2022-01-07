
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_softc {int dummy; } ;
struct bhnd_core_clkctl {int cc_dev; } ;
typedef scalar_t__ device_t ;


 int BHND_ASSERT_CLKCTL_AVAIL (struct bhnd_core_clkctl*) ;
 int BHND_CCS_ALPAREQ ;
 int BHND_CCS_ALPAVAIL ;
 int BHND_CCS_AREQ_MASK ;
 int BHND_CCS_HTAREQ ;
 int BHND_CCS_HTAVAIL ;
 int BHND_CLKCTL_LOCK (struct bhnd_core_clkctl*) ;
 int BHND_CLKCTL_SET_4 (struct bhnd_core_clkctl*,int,int ) ;
 int BHND_CLKCTL_UNLOCK (struct bhnd_core_clkctl*) ;
 int BHND_CLOCK_ALP ;
 int BHND_CLOCK_DYN ;
 int BHND_CLOCK_HT ;
 int BHND_CLOCK_ILP ;
 int EINVAL ;
 int ENODEV ;
 int bhnd_core_clkctl_wait (struct bhnd_core_clkctl*,int,int) ;
 struct bhnd_core_clkctl* bhnd_get_pmu_info (scalar_t__) ;
 int device_get_nameunit (int ) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct bhnd_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,int ,int) ;
 int panic (char*) ;

int
bhnd_generic_enable_clocks(device_t dev, device_t child, uint32_t clocks)
{
 struct bhnd_softc *sc;
 struct bhnd_core_clkctl *clkctl;
 uint32_t avail;
 uint32_t req;
 int error;

 sc = device_get_softc(dev);

 if (device_get_parent(child) != dev)
  return (EINVAL);

 if ((clkctl = bhnd_get_pmu_info(child)) == ((void*)0))
  panic("no active PMU allocation");

 BHND_ASSERT_CLKCTL_AVAIL(clkctl);

 sc = device_get_softc(dev);

 avail = 0x0;
 req = 0x0;


 if (clocks & BHND_CLOCK_DYN)
  clocks &= ~BHND_CLOCK_DYN;

 if (clocks & BHND_CLOCK_ILP)
  clocks &= ~BHND_CLOCK_ILP;

 if (clocks & BHND_CLOCK_ALP) {
  req |= BHND_CCS_ALPAREQ;
  avail |= BHND_CCS_ALPAVAIL;
  clocks &= ~BHND_CLOCK_ALP;
 }

 if (clocks & BHND_CLOCK_HT) {
  req |= BHND_CCS_HTAREQ;
  avail |= BHND_CCS_HTAVAIL;
  clocks &= ~BHND_CLOCK_HT;
 }


 if (clocks != 0x0) {
  device_printf(dev, "%s requested unknown clocks: %#x\n",
      device_get_nameunit(clkctl->cc_dev), clocks);
  return (ENODEV);
 }

 BHND_CLKCTL_LOCK(clkctl);


 BHND_CLKCTL_SET_4(clkctl, req, BHND_CCS_AREQ_MASK);


 error = bhnd_core_clkctl_wait(clkctl, avail, avail);

 BHND_CLKCTL_UNLOCK(clkctl);

 return (error);
}
