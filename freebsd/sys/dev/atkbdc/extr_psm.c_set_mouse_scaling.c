
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int LOG_DEBUG ;
 int PSMC_SET_SCALING11 ;
 int PSMC_SET_SCALING21 ;
 int PSM_ACK ;
 int VLOG (int,int ) ;
 int send_aux_command (int ,int) ;

__attribute__((used)) static int
set_mouse_scaling(KBDC kbdc, int scale)
{
 int res;

 switch (scale) {
 case 1:
 default:
  scale = PSMC_SET_SCALING11;
  break;
 case 2:
  scale = PSMC_SET_SCALING21;
  break;
 }
 res = send_aux_command(kbdc, scale);
 VLOG(2, (LOG_DEBUG, "psm: SET_SCALING%s return code:%04x\n",
     (scale == PSMC_SET_SCALING21) ? "21" : "11", res));

 return (res == PSM_ACK);
}
