
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nic_mbx {int dummy; } nic_mbx ;
typedef int uint64_t ;
struct nicpf {int dev; } ;
typedef scalar_t__ bus_space_handle_t ;


 scalar_t__ nic_get_mbx_addr (int) ;
 int nic_reg_write (struct nicpf*,scalar_t__,int ) ;
 scalar_t__ pass1_silicon (int ) ;

__attribute__((used)) static void
nic_send_msg_to_vf(struct nicpf *nic, int vf, union nic_mbx *mbx)
{
 bus_space_handle_t mbx_addr = nic_get_mbx_addr(vf);
 uint64_t *msg = (uint64_t *)mbx;






 if (pass1_silicon(nic->dev)) {
  nic_reg_write(nic, mbx_addr + 0, msg[0]);
  nic_reg_write(nic, mbx_addr + 8, msg[1]);
 } else {
  nic_reg_write(nic, mbx_addr + 8, msg[1]);
  nic_reg_write(nic, mbx_addr + 0, msg[0]);
 }
}
