
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct p4tcc_softc {int auto_mode; } ;
struct cf_setting {int dev; int freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int MSR_THERM_CONTROL ;
 int TCC_NUM_SETTINGS ;
 int TCC_REG_OFFSET ;
 int TCC_SPEED_PERCENT (int) ;
 struct p4tcc_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;
 int rdmsr (int ) ;

__attribute__((used)) static int
p4tcc_get(device_t dev, struct cf_setting *set)
{
 struct p4tcc_softc *sc;
 uint64_t msr;
 int val;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);
 if (!sc->auto_mode) {
  msr = rdmsr(MSR_THERM_CONTROL);
  val = (msr >> TCC_REG_OFFSET) & (TCC_NUM_SETTINGS - 1);
 } else
  val = TCC_NUM_SETTINGS;

 memset(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));
 set->freq = TCC_SPEED_PERCENT(val);
 set->dev = dev;

 return (0);
}
