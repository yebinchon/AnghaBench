
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_int ;
struct pn_softc {int errata; int pn_type; int powernow_max_states; int * vid_to_volts; TYPE_1__* powernow_states; } ;
struct cf_setting {int freq; int lat; int * dev; int volts; int power; } ;
typedef int * device_t ;
struct TYPE_2__ {scalar_t__ fid; scalar_t__ vid; int freq; int power; } ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int ENXIO ;
 int MSR_AMDK7_FIDVID_STATUS ;
 int PENDING_STUCK ;
 scalar_t__ PN7_STA_CFID (int ) ;
 scalar_t__ PN7_STA_CVID (int ) ;

 scalar_t__ PN8_STA_CFID (int ) ;
 scalar_t__ PN8_STA_CVID (int ) ;

 struct pn_softc* device_get_softc (int *) ;
 int memset (struct cf_setting*,int ,int) ;
 int rdmsr (int ) ;

__attribute__((used)) static int
pn_get(device_t dev, struct cf_setting *cf)
{
 struct pn_softc *sc;
 u_int cfid = 0, cvid = 0;
 int i;
 uint64_t status;

 if (cf == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);
 if (sc->errata & PENDING_STUCK)
  return (ENXIO);

 status = rdmsr(MSR_AMDK7_FIDVID_STATUS);

 switch (sc->pn_type) {
 case 129:
  cfid = PN7_STA_CFID(status);
  cvid = PN7_STA_CVID(status);
  break;
 case 128:
  cfid = PN8_STA_CFID(status);
  cvid = PN8_STA_CVID(status);
  break;
 }
 for (i = 0; i < sc->powernow_max_states; ++i)
  if (cfid == sc->powernow_states[i].fid &&
      cvid == sc->powernow_states[i].vid)
   break;

 if (i < sc->powernow_max_states) {
  cf->freq = sc->powernow_states[i].freq / 1000;
  cf->power = sc->powernow_states[i].power;
  cf->lat = 200;
  cf->volts = sc->vid_to_volts[cvid];
  cf->dev = dev;
 } else {
  memset(cf, CPUFREQ_VAL_UNKNOWN, sizeof(*cf));
  cf->dev = ((void*)0);
 }

 return (0);
}
