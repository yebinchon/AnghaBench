
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smu_cmd {int len; int* data; int cmd; } ;
typedef int int8_t ;
typedef int device_t ;
typedef int addr ;


 int SMU_MISC ;
 int SMU_MISC_GET_DATA ;
 int SMU_PARTITION ;
 int SMU_PARTITION_LATEST ;
 int memcpy (int*,int*,size_t) ;
 int smu_run_cmd (int ,struct smu_cmd*,int) ;

__attribute__((used)) static int
smu_get_datablock(device_t dev, int8_t id, uint8_t *buf, size_t len)
{
 struct smu_cmd cmd;
 uint8_t addr[4];

 cmd.cmd = SMU_PARTITION;
 cmd.len = 2;
 cmd.data[0] = SMU_PARTITION_LATEST;
 cmd.data[1] = id;

 smu_run_cmd(dev, &cmd, 1);

 addr[0] = addr[1] = 0;
 addr[2] = cmd.data[0];
 addr[3] = cmd.data[1];

 cmd.cmd = SMU_MISC;
 cmd.len = 7;
 cmd.data[0] = SMU_MISC_GET_DATA;
 cmd.data[1] = sizeof(addr);
 memcpy(&cmd.data[2], addr, sizeof(addr));
 cmd.data[6] = len;

 smu_run_cmd(dev, &cmd, 1);
 memcpy(buf, cmd.data, len);
 return (0);
}
