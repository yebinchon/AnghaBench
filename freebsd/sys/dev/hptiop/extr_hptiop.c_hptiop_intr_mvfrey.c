
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int* outlist_cptr; int outlist_rptr; int list_count; TYPE_1__* outlist; } ;
struct TYPE_6__ {TYPE_2__ mvfrey; } ;
struct hpt_iop_hba {scalar_t__ initialized; TYPE_3__ u; } ;
struct TYPE_4__ {int val; } ;


 int BUS_SPACE_RD4_MVFREY2 (int ) ;
 int BUS_SPACE_WRT4_MVFREY2 (int ,int) ;
 int CPU_TO_F0_DRBL_MSG_A_BIT ;
 int cpu_to_f0_msg_a ;
 int f0_doorbell ;
 int hptiop_os_message_callback (struct hpt_iop_hba*,int) ;
 int hptiop_request_callback_mvfrey (struct hpt_iop_hba*,int) ;
 int isr_cause ;
 int pcie_f0_int_enable ;

__attribute__((used)) static int hptiop_intr_mvfrey(struct hpt_iop_hba * hba)
{
 u_int32_t status, _tag, cptr;
 int ret = 0;

 if (hba->initialized) {
  BUS_SPACE_WRT4_MVFREY2(pcie_f0_int_enable, 0);
 }

 status = BUS_SPACE_RD4_MVFREY2(f0_doorbell);
 if (status) {
  BUS_SPACE_WRT4_MVFREY2(f0_doorbell, status);
  if (status & CPU_TO_F0_DRBL_MSG_A_BIT) {
   u_int32_t msg = BUS_SPACE_RD4_MVFREY2(cpu_to_f0_msg_a);
   hptiop_os_message_callback(hba, msg);
  }
  ret = 1;
 }

 status = BUS_SPACE_RD4_MVFREY2(isr_cause);
 if (status) {
  BUS_SPACE_WRT4_MVFREY2(isr_cause, status);
  do {
   cptr = *hba->u.mvfrey.outlist_cptr & 0xff;
   while (hba->u.mvfrey.outlist_rptr != cptr) {
    hba->u.mvfrey.outlist_rptr++;
    if (hba->u.mvfrey.outlist_rptr == hba->u.mvfrey.list_count) {
     hba->u.mvfrey.outlist_rptr = 0;
    }

    _tag = hba->u.mvfrey.outlist[hba->u.mvfrey.outlist_rptr].val;
    hptiop_request_callback_mvfrey(hba, _tag);
    ret = 2;
   }
  } while (cptr != (*hba->u.mvfrey.outlist_cptr & 0xff));
 }

 if (hba->initialized) {
  BUS_SPACE_WRT4_MVFREY2(pcie_f0_int_enable, 0x1010);
 }

 return ret;
}
