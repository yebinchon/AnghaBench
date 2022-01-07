
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct p4tcc_softc {int lowest_val; int auto_mode; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;


 int EINVAL ;
 int FALSE ;
 int MSR_THERM_CONTROL ;
 int TCC_ENABLE_ONDEMAND ;
 int TCC_NUM_SETTINGS ;
 int TCC_REG_OFFSET ;
 int TRUE ;
 struct p4tcc_softc* device_get_softc (int ) ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static int
p4tcc_set(device_t dev, const struct cf_setting *set)
{
 struct p4tcc_softc *sc;
 uint64_t mask, msr;
 int val;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);





 val = set->freq * TCC_NUM_SETTINGS / 10000;
 if (val * 10000 != set->freq * TCC_NUM_SETTINGS ||
     val < sc->lowest_val || val > TCC_NUM_SETTINGS)
  return (EINVAL);






 msr = rdmsr(MSR_THERM_CONTROL);
 mask = (TCC_NUM_SETTINGS - 1) << TCC_REG_OFFSET;
 msr &= ~(mask | TCC_ENABLE_ONDEMAND);
 if (val < TCC_NUM_SETTINGS)
  msr |= (val << TCC_REG_OFFSET) | TCC_ENABLE_ONDEMAND;
 wrmsr(MSR_THERM_CONTROL, msr);
 if (msr & TCC_ENABLE_ONDEMAND)
  sc->auto_mode = FALSE;
 else
  sc->auto_mode = TRUE;

 return (0);
}
