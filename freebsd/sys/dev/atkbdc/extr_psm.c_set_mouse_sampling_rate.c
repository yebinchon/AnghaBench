
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int LOG_DEBUG ;
 int PSMC_SET_SAMPLING_RATE ;
 int PSM_ACK ;
 int VLOG (int,int ) ;
 int send_aux_command_and_data (int ,int ,int) ;

__attribute__((used)) static int
set_mouse_sampling_rate(KBDC kbdc, int rate)
{
 int res;

 res = send_aux_command_and_data(kbdc, PSMC_SET_SAMPLING_RATE, rate);
 VLOG(2, (LOG_DEBUG, "psm: SET_SAMPLING_RATE (%d) %04x\n", rate, res));

 return ((res == PSM_ACK) ? rate : -1);
}
