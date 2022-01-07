
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_cmd {int rom_len; int * rom_cmd; } ;
typedef int device_t ;
typedef int cmd ;


 int SEARCH_ROM ;
 int memset (struct ow_cmd*,int ,int) ;
 int ow_send_command (int ,int ,struct ow_cmd*) ;

__attribute__((used)) static int
ow_search_rom(device_t lldev, device_t dev)
{
 struct ow_cmd cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.rom_cmd[0] = SEARCH_ROM;
 cmd.rom_len = 1;
 return ow_send_command(lldev, dev, &cmd);
}
