
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint64_t ;
struct ichss_softc {TYPE_1__* sets; int dev; int ctrl_reg; int bm_reg; } ;
struct cf_setting {int freq; } ;
typedef int register_t ;
typedef int device_t ;
struct TYPE_2__ {int freq; } ;


 scalar_t__ CPUFREQ_CMP (int ,int) ;
 int CPUFREQ_VAL_UNKNOWN ;
 int DPRINT (char*,size_t) ;
 int EINVAL ;
 int ENXIO ;
 size_t ICHSS_BM_DISABLE ;
 size_t ICHSS_CTRL_BIT ;
 size_t ICH_GET_REG (int ) ;
 int ICH_SET_REG (int ,size_t) ;
 int cpu_est_clockrate (int ,int*) ;
 struct ichss_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t) ;
 int intr_disable () ;
 int intr_restore (int ) ;

__attribute__((used)) static int
ichss_set(device_t dev, const struct cf_setting *set)
{
 struct ichss_softc *sc;
 uint8_t bmval, new_val, old_val, req_val;
 uint64_t rate;
 register_t regs;


 sc = device_get_softc(dev);
 if (CPUFREQ_CMP(set->freq, sc->sets[0].freq))
  req_val = 0;
 else if (CPUFREQ_CMP(set->freq, sc->sets[1].freq))
  req_val = ICHSS_CTRL_BIT;
 else
  return (EINVAL);
 DPRINT("ichss: requested setting %d\n", req_val);


 regs = intr_disable();
 old_val = ICH_GET_REG(sc->ctrl_reg) & ~ICHSS_CTRL_BIT;





 bmval = ICH_GET_REG(sc->bm_reg) | ICHSS_BM_DISABLE;
 ICH_SET_REG(sc->bm_reg, bmval);
 ICH_SET_REG(sc->ctrl_reg, old_val | req_val);
 ICH_SET_REG(sc->bm_reg, bmval & ~ICHSS_BM_DISABLE);


 new_val = ICH_GET_REG(sc->ctrl_reg);
 intr_restore(regs);


 if (req_val != (new_val & ICHSS_CTRL_BIT)) {
     device_printf(sc->dev, "transition to %d failed\n", req_val);
     return (ENXIO);
 }


 if (sc->sets[req_val].freq == CPUFREQ_VAL_UNKNOWN) {
  cpu_est_clockrate(0, &rate);
  sc->sets[req_val].freq = rate / 1000000;
  DPRINT("ichss: set calibrated new rate of %d\n",
      sc->sets[req_val].freq);
 }

 return (0);
}
