
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_softc {int sc_cpu_diode_scale; int sc_cpu_volt_scale; int sc_cpu_volt_offset; int sc_cpu_curr_scale; int sc_cpu_curr_offset; int sc_slots_pow_scale; int sc_slots_pow_offset; int sc_cpu_diode_offset; } ;
struct smu_sensor {int reg; int type; int dev; } ;
struct smu_cmd {int len; int* data; int cmd; } ;
typedef int int64_t ;
typedef int device_t ;


 int SMU_ADC ;




 struct smu_softc* device_get_softc (int ) ;
 int smu_run_cmd (int ,struct smu_cmd*,int) ;

__attribute__((used)) static int
smu_sensor_read(struct smu_sensor *sens)
{
 device_t smu = sens->dev;
 struct smu_cmd cmd;
 struct smu_softc *sc;
 int64_t value;
 int error;

 cmd.cmd = SMU_ADC;
 cmd.len = 1;
 cmd.data[0] = sens->reg;
 error = 0;

 error = smu_run_cmd(smu, &cmd, 1);
 if (error != 0)
  return (-1);

 sc = device_get_softc(smu);
 value = (cmd.data[0] << 8) | cmd.data[1];

 switch (sens->type) {
 case 129:
  value *= sc->sc_cpu_diode_scale;
  value >>= 3;
  value += ((int64_t)sc->sc_cpu_diode_offset) << 9;
  value <<= 1;


  value = 10*(value >> 16) + ((10*(value & 0xffff)) >> 16) + 2731;
  break;
 case 128:
  value *= sc->sc_cpu_volt_scale;
  value += sc->sc_cpu_volt_offset;
  value <<= 4;


  value *= 15625;
  value /= 1024;
  value /= 1000;
  break;
 case 131:
  value *= sc->sc_cpu_curr_scale;
  value += sc->sc_cpu_curr_offset;
  value <<= 4;


  value *= 15625;
  value /= 1024;
  value /= 1000;
  break;
 case 130:
  value *= sc->sc_slots_pow_scale;
  value += sc->sc_slots_pow_offset;
  value <<= 4;


  value *= 15625;
  value /= 1024;
  value /= 1000;
  break;
 }

 return (value);
}
