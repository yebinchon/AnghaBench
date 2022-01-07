
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_timing {int dummy; } ;
struct ow_cmd {int rom_len; int rom_read_len; int* rom_read; int xpt_len; int flags; int* xpt_read; int xpt_read_len; int * xpt_cmd; int * rom_cmd; } ;
typedef int device_t ;


 int ENOENT ;
 int OWLL_READ_DATA (int ,struct ow_timing*,int*) ;
 int OWLL_RESET_AND_PRESENCE (int ,struct ow_timing*,int*) ;
 int OW_FLAG_OVERDRIVE ;
 int OW_FLAG_READ_BIT ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int memset (int*,int ,int) ;
 int ow_read_byte (int ,struct ow_timing*,int*) ;
 int ow_send_byte (int ,struct ow_timing*,int ) ;
 struct ow_timing timing_overdrive ;
 struct ow_timing timing_regular ;

__attribute__((used)) static int
ow_send_command(device_t ndev, device_t pdev, struct ow_cmd *cmd)
{
 int present, i, bit, tries;
 device_t lldev;
 struct ow_timing *t;

 lldev = device_get_parent(ndev);




 tries = 4;
 do {
  OWLL_RESET_AND_PRESENCE(lldev, &timing_regular, &present);
  if (present == 1)
   device_printf(ndev, "Reset said no device on bus?.\n");
 } while (present == 1 && tries-- > 0);
 if (present == 1) {
  device_printf(ndev, "Reset said the device wasn't there.\n");
  return ENOENT;
 }
 if (present == -1) {
  device_printf(ndev, "Reset discovered bus wired wrong.\n");
  return ENOENT;
 }

 for (i = 0; i < cmd->rom_len; i++)
  ow_send_byte(lldev, &timing_regular, cmd->rom_cmd[i]);
 for (i = 0; i < cmd->rom_read_len; i++)
  ow_read_byte(lldev, &timing_regular, cmd->rom_read + i);
 if (cmd->xpt_len) {
  t = (cmd->flags & OW_FLAG_OVERDRIVE) ?
      &timing_overdrive : &timing_regular;
  for (i = 0; i < cmd->xpt_len; i++)
   ow_send_byte(lldev, t, cmd->xpt_cmd[i]);
  if (cmd->flags & OW_FLAG_READ_BIT) {
   memset(cmd->xpt_read, 0, (cmd->xpt_read_len + 7) / 8);
   for (i = 0; i < cmd->xpt_read_len; i++) {
    OWLL_READ_DATA(lldev, t, &bit);
    cmd->xpt_read[i / 8] |= bit << (i % 8);
   }
  } else {
   for (i = 0; i < cmd->xpt_read_len; i++)
    ow_read_byte(lldev, t, cmd->xpt_read + i);
  }
 }
 return 0;
}
