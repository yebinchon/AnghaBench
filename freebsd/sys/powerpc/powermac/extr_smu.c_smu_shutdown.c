
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_cmd {int data; int len; int cmd; } ;
typedef void* device_t ;


 int RB_HALT ;
 int SMU_POWER ;
 int smu_run_cmd (void*,struct smu_cmd*,int) ;
 int strcpy (int ,char*) ;
 int strlen (int ) ;

__attribute__((used)) static void
smu_shutdown(void *xdev, int howto)
{
 device_t smu = xdev;
 struct smu_cmd cmd;

 cmd.cmd = SMU_POWER;
 if (howto & RB_HALT)
  strcpy(cmd.data, "SHUTDOWN");
 else
  strcpy(cmd.data, "RESTART");

 cmd.len = strlen(cmd.data);

 smu_run_cmd(smu, &cmd, 1);

 for (;;);
}
