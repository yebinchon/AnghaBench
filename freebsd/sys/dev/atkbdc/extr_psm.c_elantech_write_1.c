
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int ELANTECH_CUSTOM_CMD ;
 int ELANTECH_REG_RDWR ;
 int ELANTECH_REG_WRITE ;
 scalar_t__ PSM_ACK ;
 scalar_t__ send_aux_command (int ,int) ;
 scalar_t__ set_mouse_scaling (int ,int) ;

__attribute__((used)) static int
elantech_write_1(KBDC kbdc, int hwversion, int reg, int val)
{
 int res, writecmd;

 writecmd = hwversion == 2 ? ELANTECH_REG_WRITE : ELANTECH_REG_RDWR;

 res = send_aux_command(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
 res |= send_aux_command(kbdc, writecmd) != PSM_ACK;
 res |= send_aux_command(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
 res |= send_aux_command(kbdc, reg) != PSM_ACK;
 if (hwversion == 4) {
  res |= send_aux_command(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
  res |= send_aux_command(kbdc, writecmd) != PSM_ACK;
 }
 res |= send_aux_command(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
 res |= send_aux_command(kbdc, val) != PSM_ACK;
 res |= set_mouse_scaling(kbdc, 1) == 0;

 return (res);
}
