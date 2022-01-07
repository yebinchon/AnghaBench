
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint64_t ;
struct ichss_softc {struct cf_setting* sets; int ctrl_reg; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int DPRINT (char*,int) ;
 size_t ICHSS_CTRL_BIT ;
 size_t ICH_GET_REG (int ) ;
 int cpu_est_clockrate (int ,int*) ;
 struct ichss_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ichss_get(device_t dev, struct cf_setting *set)
{
 struct ichss_softc *sc;
 uint64_t rate;
 uint8_t state;

 sc = device_get_softc(dev);
 state = ICH_GET_REG(sc->ctrl_reg) & ICHSS_CTRL_BIT;


 if (sc->sets[state].freq == CPUFREQ_VAL_UNKNOWN) {
  cpu_est_clockrate(0, &rate);
  sc->sets[state].freq = rate / 1000000;
  DPRINT("ichss: get calibrated new rate of %d\n",
      sc->sets[state].freq);
 }
 *set = sc->sets[state];

 return (0);
}
