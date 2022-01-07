
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cf_setting {int dev; int freq; } ;
struct acpi_throttle_softc {int cpu_thr_state; int cpu_p_cnt; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int CPU_MAX_SPEED ;
 int CPU_SPEED_PERCENT (int) ;
 int EINVAL ;
 int THR_GET_REG (int ) ;
 int cpu_duty_offset ;
 struct acpi_throttle_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static int
acpi_thr_get(device_t dev, struct cf_setting *set)
{
 struct acpi_throttle_softc *sc;
 uint32_t p_cnt, clk_val;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);


 p_cnt = THR_GET_REG(sc->cpu_p_cnt);
 clk_val = (p_cnt >> cpu_duty_offset) & (CPU_MAX_SPEED - 1);
 sc->cpu_thr_state = clk_val;

 memset(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));
 set->freq = CPU_SPEED_PERCENT(clk_val);
 set->dev = dev;

 return (0);
}
