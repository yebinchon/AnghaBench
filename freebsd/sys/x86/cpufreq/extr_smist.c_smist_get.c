
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct smist_softc {struct cf_setting* sets; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int DPRINT (int ,char*,int) ;
 int GET_STATE ;
 int cpu_est_clockrate (int ,int*) ;
 struct smist_softc* device_get_softc (int ) ;
 int getset_state (struct smist_softc*,int*,int ) ;

__attribute__((used)) static int
smist_get(device_t dev, struct cf_setting *set)
{
 struct smist_softc *sc;
 uint64_t rate;
 int state;
 int rv;

 sc = device_get_softc(dev);
 rv = getset_state(sc, &state, GET_STATE);
 if (rv != 0)
  return (rv);


 if (sc->sets[state].freq == CPUFREQ_VAL_UNKNOWN) {
  cpu_est_clockrate(0, &rate);
  sc->sets[state].freq = rate / 1000000;
  DPRINT(dev, "get calibrated new rate of %d\n",
      sc->sets[state].freq);
 }
 *set = sc->sets[state];

 return (0);
}
