
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct hpt_iop_hba {scalar_t__ msg_done; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* iop_intr ) (struct hpt_iop_hba*) ;int (* post_msg ) (struct hpt_iop_hba*,scalar_t__) ;} ;


 int DELAY (int) ;
 int stub1 (struct hpt_iop_hba*,scalar_t__) ;
 int stub2 (struct hpt_iop_hba*) ;

__attribute__((used)) static int hptiop_send_sync_msg(struct hpt_iop_hba *hba,
     u_int32_t msg, u_int32_t millisec)
{
 u_int32_t i;

 hba->msg_done = 0;
 hba->ops->post_msg(hba, msg);

 for (i=0; i<millisec; i++) {
  hba->ops->iop_intr(hba);
  if (hba->msg_done)
   break;
  DELAY(1000);
 }

 return hba->msg_done? 0 : -1;
}
