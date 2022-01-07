
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nicpf {int dev; } ;


 int ETIMEDOUT ;
 int NIC_PF_SW_SYNC_RX ;
 int NIC_PF_SW_SYNC_RX_DONE ;
 int device_printf (int ,char*) ;
 int nic_reg_read (struct nicpf*,int ) ;
 int nic_reg_write (struct nicpf*,int ,int) ;

__attribute__((used)) static int
nic_rcv_queue_sw_sync(struct nicpf *nic)
{
 uint16_t timeout = ~0x00;

 nic_reg_write(nic, NIC_PF_SW_SYNC_RX, 0x01);

 while (timeout) {
  if (nic_reg_read(nic, NIC_PF_SW_SYNC_RX_DONE) & 0x1)
   break;
  timeout--;
 }
 nic_reg_write(nic, NIC_PF_SW_SYNC_RX, 0x00);
 if (!timeout) {
  device_printf(nic->dev, "Receive queue software sync failed\n");
  return (ETIMEDOUT);
 }
 return (0);
}
