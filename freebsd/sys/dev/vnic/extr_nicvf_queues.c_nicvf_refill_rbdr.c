
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbdr_entry_t {int buf_addr; } ;
struct TYPE_2__ {int q_len; } ;
struct rbdr {int idx; int * rbdr_buff_dmaps; TYPE_1__ dmem; int enable; struct nicvf* nic; } ;
struct queue_set {int rbdr_len; } ;
struct nicvf {struct queue_set* qs; } ;
typedef int bus_dmamap_t ;
typedef int bus_addr_t ;
typedef int boolean_t ;


 int DMA_BUFFER_LEN ;
 int ENOMEM ;
 int FALSE ;
 struct rbdr_entry_t* GET_RBDR_DESC (struct rbdr*,int) ;
 int NICVF_INTR_RBDR ;
 int NICVF_RCV_BUF_ALIGN ;
 int NIC_QSET_RBDR_0_1_DOOR ;
 int NIC_QSET_RBDR_0_1_STATUS0 ;
 int NIC_QSET_RBDR_0_1_TAIL ;
 int TRUE ;
 scalar_t__ nicvf_alloc_rcv_buffer (struct nicvf*,struct rbdr*,int ,int,int ,int*) ;
 int nicvf_enable_intr (struct nicvf*,int ,int) ;
 int nicvf_queue_reg_read (struct nicvf*,int ,int) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int) ;
 int wmb () ;

__attribute__((used)) static int
nicvf_refill_rbdr(struct rbdr *rbdr, int mflags)
{
 struct nicvf *nic;
 struct queue_set *qs;
 int rbdr_idx;
 int tail, qcount;
 int refill_rb_cnt;
 struct rbdr_entry_t *desc;
 bus_dmamap_t dmap;
 bus_addr_t rbuf;
 boolean_t rb_alloc_fail;
 int new_rb;

 rb_alloc_fail = TRUE;
 new_rb = 0;
 nic = rbdr->nic;
 qs = nic->qs;
 rbdr_idx = rbdr->idx;


 if (!rbdr->enable)
  return (0);


 qcount = nicvf_queue_reg_read(nic, NIC_QSET_RBDR_0_1_STATUS0, rbdr_idx);
 qcount &= 0x7FFFF;

 if (qcount >= (qs->rbdr_len - 1)) {
  rb_alloc_fail = FALSE;
  goto out;
 } else
  refill_rb_cnt = qs->rbdr_len - qcount - 1;


 tail = nicvf_queue_reg_read(nic, NIC_QSET_RBDR_0_1_TAIL, rbdr_idx) >> 3;
 while (refill_rb_cnt) {
  tail++;
  tail &= (rbdr->dmem.q_len - 1);

  dmap = rbdr->rbdr_buff_dmaps[tail];
  if (nicvf_alloc_rcv_buffer(nic, rbdr, dmap, mflags,
      DMA_BUFFER_LEN, &rbuf)) {

   break;
  }
  desc = GET_RBDR_DESC(rbdr, tail);
  desc->buf_addr = (rbuf >> NICVF_RCV_BUF_ALIGN);
  refill_rb_cnt--;
  new_rb++;
 }


 wmb();


 if (refill_rb_cnt == 0)
  rb_alloc_fail = FALSE;


 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_DOOR,
         rbdr_idx, new_rb);
out:
 if (!rb_alloc_fail) {




  nicvf_enable_intr(nic, NICVF_INTR_RBDR, rbdr_idx);

  return (0);
 }

 return (ENOMEM);
}
