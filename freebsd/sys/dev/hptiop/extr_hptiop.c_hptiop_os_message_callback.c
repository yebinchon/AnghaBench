
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int msg_done; } ;



__attribute__((used)) static void hptiop_os_message_callback(struct hpt_iop_hba * hba, u_int32_t msg)
{
 hba->msg_done = 1;
}
