
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ow_cmd {int xpt_read_len; int xpt_read; } ;
typedef int device_t ;


 int READ_SCRATCHPAD ;
 int memcpy (int *,int ,int) ;
 int own_command_wait (int ,struct ow_cmd*) ;
 int own_self_command (int ,struct ow_cmd*,int ) ;

__attribute__((used)) static int
ow_temp_read_scratchpad(device_t dev, uint8_t *scratch, int len)
{
 struct ow_cmd cmd;

 own_self_command(dev, &cmd, READ_SCRATCHPAD);
 cmd.xpt_read_len = len;
 own_command_wait(dev, &cmd);
 memcpy(scratch, cmd.xpt_read, len);

 return 0;
}
