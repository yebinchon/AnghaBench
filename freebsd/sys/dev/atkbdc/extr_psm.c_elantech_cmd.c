
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int ELANTECH_CUSTOM_CMD ;
 scalar_t__ PSM_ACK ;
 int get_mouse_status (int ,int*,int ,int) ;
 scalar_t__ mouse_ext_command (int ,int) ;
 scalar_t__ send_aux_command (int ,int) ;
 scalar_t__ set_mouse_scaling (int ,int) ;

__attribute__((used)) static int
elantech_cmd(KBDC kbdc, int hwversion, int cmd, int *resp)
{
 int res;

 if (hwversion == 2) {
  res = set_mouse_scaling(kbdc, 1) == 0;
  res |= mouse_ext_command(kbdc, cmd) == 0;
 } else {
  res = send_aux_command(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
  res |= send_aux_command(kbdc, cmd) != PSM_ACK;
 }
 res |= get_mouse_status(kbdc, resp, 0, 3) != 3;

 return (res);
}
