
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int LOG_DEBUG ;
 int PSMC_SET_RESOLUTION ;
 int PSM_ACK ;
 int VLOG (int,int ) ;
 int send_aux_command_and_data (int ,int ,int) ;

__attribute__((used)) static int
set_mouse_resolution(KBDC kbdc, int val)
{
 int res;

 res = send_aux_command_and_data(kbdc, PSMC_SET_RESOLUTION, val);
 VLOG(2, (LOG_DEBUG, "psm: SET_RESOLUTION (%d) %04x\n", val, res));

 return ((res == PSM_ACK) ? val : -1);
}
