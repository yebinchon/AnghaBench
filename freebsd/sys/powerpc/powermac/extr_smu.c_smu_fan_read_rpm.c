
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_fan {int old_style; int reg; int dev; } ;
struct smu_cmd {int len; int* data; void* cmd; } ;
typedef int device_t ;


 int EWOULDBLOCK ;
 void* SMU_FAN ;
 int SMU_RPM_STATUS ;
 int smu_fan_check_old_style (struct smu_fan*) ;
 int smu_run_cmd (int ,struct smu_cmd*,int) ;

__attribute__((used)) static int
smu_fan_read_rpm(struct smu_fan *fan)
{
 device_t smu = fan->dev;
 struct smu_cmd cmd;
 int rpm, error;

 smu_fan_check_old_style(fan);

 if (!fan->old_style) {
  cmd.cmd = SMU_FAN;
  cmd.len = 2;
  cmd.data[0] = 0x31;
  cmd.data[1] = fan->reg;

  error = smu_run_cmd(smu, &cmd, 1);
  if (error && error != EWOULDBLOCK)
   fan->old_style = 1;

  rpm = (cmd.data[0] << 8) | cmd.data[1];
 }

 if (fan->old_style) {
  cmd.cmd = SMU_FAN;
  cmd.len = 1;
  cmd.data[0] = SMU_RPM_STATUS;

  error = smu_run_cmd(smu, &cmd, 1);
  if (error)
   return (error);

  rpm = (cmd.data[fan->reg*2+1] << 8) | cmd.data[fan->reg*2+2];
 }

 return (rpm);
}
