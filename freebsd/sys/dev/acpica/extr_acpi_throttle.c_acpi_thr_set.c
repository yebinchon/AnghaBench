
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cf_setting {int freq; } ;
struct acpi_throttle_softc {int cpu_thr_state; int cpu_p_cnt; } ;
typedef int device_t ;


 int CPU_MAX_SPEED ;
 int CPU_P_CNT_THT_EN ;
 int EINVAL ;
 int THR_GET_REG (int ) ;
 int THR_SET_REG (int ,int) ;
 int cpu_duty_offset ;
 struct acpi_throttle_softc* device_get_softc (int ) ;

__attribute__((used)) static int
acpi_thr_set(device_t dev, const struct cf_setting *set)
{
 struct acpi_throttle_softc *sc;
 uint32_t clk_val, p_cnt, speed;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);





 speed = set->freq * CPU_MAX_SPEED / 10000;
 if (speed * 10000 != set->freq * CPU_MAX_SPEED ||
     speed < 1 || speed > CPU_MAX_SPEED)
  return (EINVAL);


 if (speed == sc->cpu_thr_state)
  return (0);


 p_cnt = THR_GET_REG(sc->cpu_p_cnt);
 p_cnt &= ~CPU_P_CNT_THT_EN;
 THR_SET_REG(sc->cpu_p_cnt, p_cnt);


 if (speed < CPU_MAX_SPEED) {

  clk_val = (CPU_MAX_SPEED - 1) << cpu_duty_offset;
  p_cnt &= ~clk_val;
  p_cnt |= (speed << cpu_duty_offset);


  THR_SET_REG(sc->cpu_p_cnt, p_cnt);
  p_cnt |= CPU_P_CNT_THT_EN;
  THR_SET_REG(sc->cpu_p_cnt, p_cnt);
 }
 sc->cpu_thr_state = speed;

 return (0);
}
