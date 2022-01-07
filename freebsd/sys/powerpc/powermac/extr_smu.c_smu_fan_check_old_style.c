
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_softc {int old_style_fans; } ;
struct smu_fan {int reg; int dev; } ;
struct smu_cmd {int len; int* data; int cmd; } ;
typedef int device_t ;


 int EWOULDBLOCK ;
 int SMU_FAN ;
 struct smu_softc* device_get_softc (int ) ;
 int smu_run_cmd (int ,struct smu_cmd*,int) ;

__attribute__((used)) static int
smu_fan_check_old_style(struct smu_fan *fan)
{
 device_t smu = fan->dev;
 struct smu_softc *sc = device_get_softc(smu);
 struct smu_cmd cmd;
 int error;

 if (sc->old_style_fans != -1)
  return (sc->old_style_fans);







 cmd.cmd = SMU_FAN;
 cmd.len = 2;
 cmd.data[0] = 0x31;
 cmd.data[1] = fan->reg;

 do {
  error = smu_run_cmd(smu, &cmd, 1);
 } while (error == EWOULDBLOCK);

 sc->old_style_fans = (error != 0);

 return (sc->old_style_fans);
}
