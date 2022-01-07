
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_hba {int dummy; } ;


 int IOPMU_INBOUND_MSG0_RESET ;
 int IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK ;
 scalar_t__ hptiop_send_sync_msg (struct hpt_iop_hba*,int ,int) ;

__attribute__((used)) static void hptiop_reset_adapter(void *argv)
{
 struct hpt_iop_hba * hba = (struct hpt_iop_hba *)argv;
 if (hptiop_send_sync_msg(hba, IOPMU_INBOUND_MSG0_RESET, 60000))
  return;
 hptiop_send_sync_msg(hba, IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK, 5000);
}
