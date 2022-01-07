
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpc85xx_jog_softc {int cpu; } ;
struct cf_setting {int dev; int freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int GUTS_PORPLLSR ;
 int MHZ ;
 int PMJCR_GET_CORE_MULT (int ,int ) ;
 int ccsr_read4 (int ) ;
 struct mpc85xx_jog_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;
 int mpc85xx_get_system_clock () ;

__attribute__((used)) static int
mpc85xx_jog_get(device_t dev, struct cf_setting *set)
{
 struct mpc85xx_jog_softc *sc;
 uint32_t pmjcr;
 uint32_t freq;

 if (set == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);
 memset(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));

 pmjcr = ccsr_read4(GUTS_PORPLLSR);
 freq = PMJCR_GET_CORE_MULT(pmjcr, sc->cpu);
 freq *= mpc85xx_get_system_clock();
 freq /= MHZ;

 set->freq = freq;
 set->dev = dev;

 return (0);
}
