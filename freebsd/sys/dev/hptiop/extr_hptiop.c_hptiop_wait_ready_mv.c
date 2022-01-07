
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int IOPMU_INBOUND_MSG0_NOP ;
 scalar_t__ hptiop_send_sync_msg (struct hpt_iop_hba*,int ,int ) ;

__attribute__((used)) static int hptiop_wait_ready_mv(struct hpt_iop_hba * hba, u_int32_t millisec)
{
 if (hptiop_send_sync_msg(hba, IOPMU_INBOUND_MSG0_NOP, millisec))
  return -1;

 return 0;
}
