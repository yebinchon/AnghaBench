
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_cmd {int len; char* data; int cmd; } ;
typedef int device_t ;


 int SMU_POWER ;
 int smu_run_cmd (int ,struct smu_cmd*,int) ;

__attribute__((used)) static void
smu_slew_cpu_voltage(device_t dev, int to)
{
 struct smu_cmd cmd;

 cmd.cmd = SMU_POWER;
 cmd.len = 8;
 cmd.data[0] = 'V';
 cmd.data[1] = 'S';
 cmd.data[2] = 'L';
 cmd.data[3] = 'E';
 cmd.data[4] = 'W';
 cmd.data[5] = 0xff;
 cmd.data[6] = 1;
 cmd.data[7] = to;

 smu_run_cmd(dev, &cmd, 1);
}
