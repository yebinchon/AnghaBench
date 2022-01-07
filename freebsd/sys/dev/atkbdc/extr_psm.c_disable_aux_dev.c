
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int LOG_DEBUG ;
 int PSMC_DISABLE_DEV ;
 int PSM_ACK ;
 int VLOG (int,int ) ;
 int send_aux_command (int ,int ) ;

__attribute__((used)) static int
disable_aux_dev(KBDC kbdc)
{
 int res;

 res = send_aux_command(kbdc, PSMC_DISABLE_DEV);
 VLOG(2, (LOG_DEBUG, "psm: DISABLE_DEV return code:%04x\n", res));

 return (res == PSM_ACK);
}
