
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_cmd {int xpt_read_len; int * xpt_read; int flags; } ;
typedef int device_t ;


 int OW_FLAG_READ_BIT ;
 int READ_POWER_SUPPLY ;
 int own_command_wait (int ,struct ow_cmd*) ;
 int own_self_command (int ,struct ow_cmd*,int ) ;

__attribute__((used)) static int
ow_temp_read_power_supply(device_t dev, int *parasite)
{
 struct ow_cmd cmd;

 own_self_command(dev, &cmd, READ_POWER_SUPPLY);
 cmd.flags |= OW_FLAG_READ_BIT;
 cmd.xpt_read_len = 1;
 own_command_wait(dev, &cmd);
 *parasite = !cmd.xpt_read[0];

 return 0;
}
