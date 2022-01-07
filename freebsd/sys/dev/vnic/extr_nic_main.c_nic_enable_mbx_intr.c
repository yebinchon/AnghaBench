
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicpf {int dummy; } ;


 scalar_t__ NIC_PF_MAILBOX_ENA_W1S ;
 int nic_reg_write (struct nicpf*,scalar_t__,unsigned long) ;

__attribute__((used)) static void
nic_enable_mbx_intr(struct nicpf *nic)
{


 nic_reg_write(nic, NIC_PF_MAILBOX_ENA_W1S, ~0UL);
 nic_reg_write(nic, NIC_PF_MAILBOX_ENA_W1S + sizeof(uint64_t), ~0UL);
}
