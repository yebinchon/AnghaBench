
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int ELANTECH_CUSTOM_CMD ;
 int ELANTECH_REG_RDWR ;
 int ELANTECH_REG_READ ;
 scalar_t__ PSM_ACK ;
 int get_mouse_status (int ,int*,int ,int) ;
 scalar_t__ send_aux_command (int ,int) ;

__attribute__((used)) static int
elantech_read_1(KBDC kbdc, int hwversion, int reg, int *val)
{
 int res, readcmd, retidx;
 int resp[3];

 readcmd = hwversion == 2 ? ELANTECH_REG_READ : ELANTECH_REG_RDWR;
 retidx = hwversion == 4 ? 1 : 0;

 res = send_aux_command(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
 res |= send_aux_command(kbdc, readcmd) != PSM_ACK;
 res |= send_aux_command(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
 res |= send_aux_command(kbdc, reg) != PSM_ACK;
 res |= get_mouse_status(kbdc, resp, 0, 3) != 3;

 if (res == 0)
  *val = resp[retidx];

 return (res);
}
