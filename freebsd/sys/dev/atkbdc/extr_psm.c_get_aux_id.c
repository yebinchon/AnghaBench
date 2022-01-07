
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int DELAY (int) ;
 int LOG_DEBUG ;
 int PSMC_SEND_DEV_ID ;
 int PSM_ACK ;
 int VLOG (int,int ) ;
 int empty_aux_buffer (int ,int) ;
 int read_aux_data (int ) ;
 int send_aux_command (int ,int ) ;

__attribute__((used)) static int
get_aux_id(KBDC kbdc)
{
 int res;
 int id;

 empty_aux_buffer(kbdc, 5);
 res = send_aux_command(kbdc, PSMC_SEND_DEV_ID);
 VLOG(2, (LOG_DEBUG, "psm: SEND_DEV_ID return code:%04x\n", res));
 if (res != PSM_ACK)
  return (-1);


 DELAY(10000);

 id = read_aux_data(kbdc);
 VLOG(2, (LOG_DEBUG, "psm: device ID: %04x\n", id));

 return (id);
}
