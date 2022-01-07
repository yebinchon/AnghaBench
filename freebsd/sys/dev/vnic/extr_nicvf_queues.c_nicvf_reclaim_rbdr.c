
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rbdr {int head; int tail; } ;
struct nicvf {int dev; } ;


 int DELAY (int) ;
 int NICVF_RBDR_RESET ;
 int NIC_QSET_RBDR_0_1_CFG ;
 int NIC_QSET_RBDR_0_1_HEAD ;
 int NIC_QSET_RBDR_0_1_PREFETCH_STATUS ;
 int NIC_QSET_RBDR_0_1_STATUS0 ;
 int NIC_QSET_RBDR_0_1_TAIL ;
 int device_printf (int ,char*) ;
 scalar_t__ nicvf_poll_reg (struct nicvf*,int,int ,int,int,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int ,int) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int) ;

__attribute__((used)) static void
nicvf_reclaim_rbdr(struct nicvf *nic, struct rbdr *rbdr, int qidx)
{
 uint64_t tmp, fifo_state;
 int timeout = 10;


 rbdr->head =
     nicvf_queue_reg_read(nic, NIC_QSET_RBDR_0_1_HEAD, qidx) >> 3;
 rbdr->tail =
     nicvf_queue_reg_read(nic, NIC_QSET_RBDR_0_1_TAIL, qidx) >> 3;





 fifo_state = nicvf_queue_reg_read(nic, NIC_QSET_RBDR_0_1_STATUS0, qidx);
 if (((fifo_state >> 62) & 0x03) == 0x3) {
  nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_CFG,
      qidx, NICVF_RBDR_RESET);
 }


 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_CFG, qidx, 0);
 if (nicvf_poll_reg(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x00))
  return;
 while (1) {
  tmp = nicvf_queue_reg_read(nic,
      NIC_QSET_RBDR_0_1_PREFETCH_STATUS, qidx);
  if ((tmp & 0xFFFFFFFF) == ((tmp >> 32) & 0xFFFFFFFF))
   break;

  DELAY(1000);
  timeout--;
  if (!timeout) {
   device_printf(nic->dev,
       "Failed polling on prefetch status\n");
   return;
  }
 }
 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_CFG, qidx,
     NICVF_RBDR_RESET);

 if (nicvf_poll_reg(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x02))
  return;
 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_CFG, qidx, 0x00);
 if (nicvf_poll_reg(nic, qidx, NIC_QSET_RBDR_0_1_STATUS0, 62, 2, 0x00))
  return;
}
