
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_MVFREY2 (int ) ;
 int BUS_SPACE_WRT4_MVFREY2 (int ,int ) ;
 int f0_to_cpu_msg_a ;

__attribute__((used)) static void hptiop_post_msg_mvfrey(struct hpt_iop_hba *hba, u_int32_t msg)
{
 BUS_SPACE_WRT4_MVFREY2(f0_to_cpu_msg_a, msg);
 BUS_SPACE_RD4_MVFREY2(f0_to_cpu_msg_a);
}
