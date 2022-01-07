
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbdr_entry_t {int buf_addr; } ;
struct TYPE_2__ {int base; } ;
struct rbdr {int idx; int rbdr_taskq; int rbdr_task_nowait; int rbdr_task; int * rbdr_buff_dmaps; int rbdr_buff_dmat; struct nicvf* nic; int thresh; int enable; scalar_t__ dma_size; TYPE_1__ dmem; int desc; } ;
struct nicvf {int dev; } ;
typedef int bus_dmamap_t ;
typedef int bus_addr_t ;


 int DMAP_MAX_PHYSADDR ;
 int DMAP_MIN_PHYSADDR ;
 int DMA_BUFFER_LEN ;
 int EINVAL ;
 struct rbdr_entry_t* GET_RBDR_DESC (struct rbdr*,int) ;
 int MCLBYTES ;
 int M_NICVF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NICVF_RCV_BUF_ALIGN ;
 scalar_t__ NICVF_RCV_BUF_ALIGN_BYTES ;
 int PI_NET ;
 int RBDR_THRESH ;
 int TASK_INIT (int *,int ,int ,struct rbdr*) ;
 int TRUE ;
 int bus_dma_tag_create (int ,scalar_t__,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int * malloc (int,int ,int) ;
 int nicvf_alloc_q_desc_mem (struct nicvf*,TYPE_1__*,int,int,scalar_t__) ;
 int nicvf_alloc_rcv_buffer (struct nicvf*,struct rbdr*,int ,int,int ,int*) ;
 int nicvf_rbdr_task ;
 int nicvf_rbdr_task_nowait ;
 int roundup2 (int,int) ;
 int taskqueue_create_fast (char*,int,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
nicvf_init_rbdr(struct nicvf *nic, struct rbdr *rbdr, int ring_len,
    int buf_size, int qidx)
{
 bus_dmamap_t dmap;
 bus_addr_t rbuf;
 struct rbdr_entry_t *desc;
 int idx;
 int err;


 err = nicvf_alloc_q_desc_mem(nic, &rbdr->dmem, ring_len,
     sizeof(struct rbdr_entry_t), NICVF_RCV_BUF_ALIGN_BYTES);
 if (err != 0) {
  device_printf(nic->dev,
      "Failed to create RBDR descriptors ring\n");
  return (err);
 }

 rbdr->desc = rbdr->dmem.base;




 rbdr->dma_size = buf_size - NICVF_RCV_BUF_ALIGN_BYTES;
 rbdr->enable = TRUE;
 rbdr->thresh = RBDR_THRESH;
 rbdr->nic = nic;
 rbdr->idx = qidx;
 if (buf_size > MCLBYTES) {
  device_printf(nic->dev,
      "Buffer size to large for mbuf cluster\n");
  return (EINVAL);
 }
 err = bus_dma_tag_create(
     bus_get_dma_tag(nic->dev),
     NICVF_RCV_BUF_ALIGN_BYTES,
     0,
     DMAP_MAX_PHYSADDR,
     DMAP_MIN_PHYSADDR,
     ((void*)0), ((void*)0),
     roundup2(buf_size, MCLBYTES),
     1,
     roundup2(buf_size, MCLBYTES),
     0,
     ((void*)0), ((void*)0),
     &rbdr->rbdr_buff_dmat);

 if (err != 0) {
  device_printf(nic->dev,
      "Failed to create busdma tag for RBDR buffers\n");
  return (err);
 }

 rbdr->rbdr_buff_dmaps = malloc(sizeof(*rbdr->rbdr_buff_dmaps) *
     ring_len, M_NICVF, (M_WAITOK | M_ZERO));

 for (idx = 0; idx < ring_len; idx++) {
  err = bus_dmamap_create(rbdr->rbdr_buff_dmat, 0, &dmap);
  if (err != 0) {
   device_printf(nic->dev,
       "Failed to create DMA map for RB\n");
   return (err);
  }
  rbdr->rbdr_buff_dmaps[idx] = dmap;

  err = nicvf_alloc_rcv_buffer(nic, rbdr, dmap, M_WAITOK,
      DMA_BUFFER_LEN, &rbuf);
  if (err != 0)
   return (err);

  desc = GET_RBDR_DESC(rbdr, idx);
  desc->buf_addr = (rbuf >> NICVF_RCV_BUF_ALIGN);
 }


 TASK_INIT(&rbdr->rbdr_task, 0, nicvf_rbdr_task, rbdr);
 TASK_INIT(&rbdr->rbdr_task_nowait, 0, nicvf_rbdr_task_nowait, rbdr);
 rbdr->rbdr_taskq = taskqueue_create_fast("nicvf_rbdr_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &rbdr->rbdr_taskq);
 taskqueue_start_threads(&rbdr->rbdr_taskq, 1, PI_NET, "%s: rbdr_taskq",
     device_get_nameunit(nic->dev));

 return (0);
}
