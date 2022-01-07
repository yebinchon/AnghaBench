
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum poll_cmd { ____Placeholder_poll_cmd } poll_cmd ;
struct TYPE_2__ {int ifp; int (* handler ) (int ,int,int) ;} ;


 int POLL_AND_CHECK_STATUS ;
 int POLL_ONLY ;
 int microuptime (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ netisr_poll_scheduled ;
 int phase ;
 int poll_burst ;
 int poll_each_burst ;
 int poll_handlers ;
 int poll_mtx ;
 int poll_start_t ;
 TYPE_1__* pr ;
 scalar_t__ reg_frac ;
 scalar_t__ reg_frac_count ;
 int residual_burst ;
 int stub1 (int ,int,int) ;

void
netisr_poll(void)
{
 int i, cycles;
 enum poll_cmd arg = POLL_ONLY;

 if (poll_handlers == 0)
  return;

 mtx_lock(&poll_mtx);
 if (!netisr_poll_scheduled) {
  mtx_unlock(&poll_mtx);
  return;
 }
 netisr_poll_scheduled = 0;
 phase = 3;
 if (residual_burst == 0) {
  microuptime(&poll_start_t);
  if (++reg_frac_count == reg_frac) {
   arg = POLL_AND_CHECK_STATUS;
   reg_frac_count = 0;
  }

  residual_burst = poll_burst;
 }
 cycles = (residual_burst < poll_each_burst) ?
  residual_burst : poll_each_burst;
 residual_burst -= cycles;

 for (i = 0 ; i < poll_handlers ; i++)
  pr[i].handler(pr[i].ifp, arg, cycles);

 phase = 4;
 mtx_unlock(&poll_mtx);
}
