
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_cmd {int len; int* data; int cmd; } ;
typedef void* device_t ;


 int SMU_MISC ;
 int SMU_MISC_LED_CTRL ;
 int smu_run_cmd (void*,struct smu_cmd*,int ) ;

__attribute__((used)) static void
smu_set_sleepled(void *xdev, int onoff)
{
 static struct smu_cmd cmd;
 device_t smu = xdev;

 cmd.cmd = SMU_MISC;
 cmd.len = 3;
 cmd.data[0] = SMU_MISC_LED_CTRL;
 cmd.data[1] = 0;
 cmd.data[2] = onoff;

 smu_run_cmd(smu, &cmd, 0);
}
