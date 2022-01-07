
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct snd_queue {int idx; int snd_taskq; int snd_task; TYPE_2__* snd_buff; int snd_buff_dmat; struct nicvf* nic; int thresh; int free_cnt; scalar_t__ tail; scalar_t__ head; TYPE_1__ dmem; int desc; int * br; int mtx; int mtx_name; } ;
struct nicvf {int dev; } ;
struct TYPE_4__ {int dmap; } ;


 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int MCLBYTES ;
 int MIN_SQ_DESC_PER_PKT_XMIT ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NICVF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int NICVF_SQ_BASE_ALIGN_BYTES ;
 int NICVF_TSO_MAXSIZE ;
 int NICVF_TSO_NSEGS ;
 int NICVF_TX_LOCK (struct snd_queue*) ;
 int NICVF_TX_UNLOCK (struct snd_queue*) ;
 int PI_NET ;
 int SND_QUEUE_DESC_SIZE ;
 int SND_QUEUE_THRESH ;
 int TASK_INIT (int *,int ,int ,struct snd_queue*) ;
 int atomic_store_rel_int (int *,int) ;
 int * buf_ring_alloc (int,int ,int,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_2__* malloc (int,int ,int) ;
 int mtx_init (int *,int ,int *,int ) ;
 int nicvf_alloc_q_desc_mem (struct nicvf*,TYPE_1__*,int,int ,int ) ;
 int nicvf_snd_task ;
 int snprintf (int ,int,char*,char*,int) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,char*,int) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
nicvf_init_snd_queue(struct nicvf *nic, struct snd_queue *sq, int q_len,
    int qidx)
{
 size_t i;
 int err;


 snprintf(sq->mtx_name, sizeof(sq->mtx_name), "%s: SQ(%d) lock",
     device_get_nameunit(nic->dev), qidx);
 mtx_init(&sq->mtx, sq->mtx_name, ((void*)0), MTX_DEF);

 NICVF_TX_LOCK(sq);

 sq->br = buf_ring_alloc(q_len / MIN_SQ_DESC_PER_PKT_XMIT, M_DEVBUF,
     M_NOWAIT, &sq->mtx);
 if (sq->br == ((void*)0)) {
  device_printf(nic->dev,
      "ERROR: Could not set up buf ring for SQ(%d)\n", qidx);
  err = ENOMEM;
  goto error;
 }


 err = nicvf_alloc_q_desc_mem(nic, &sq->dmem, q_len, SND_QUEUE_DESC_SIZE,
         NICVF_SQ_BASE_ALIGN_BYTES);
 if (err != 0) {
  device_printf(nic->dev,
      "Could not allocate DMA memory for SQ\n");
  goto error;
 }

 sq->desc = sq->dmem.base;
 sq->head = sq->tail = 0;
 atomic_store_rel_int(&sq->free_cnt, q_len - 1);
 sq->thresh = SND_QUEUE_THRESH;
 sq->idx = qidx;
 sq->nic = nic;






 err = bus_dma_tag_create(
     bus_get_dma_tag(nic->dev),
     1,
     0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     NICVF_TSO_MAXSIZE,
     NICVF_TSO_NSEGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sq->snd_buff_dmat);

 if (err != 0) {
  device_printf(nic->dev,
      "Failed to create busdma tag for Tx buffers\n");
  goto error;
 }


 sq->snd_buff = malloc(sizeof(*sq->snd_buff) * q_len, M_NICVF,
     (M_NOWAIT | M_ZERO));
 if (sq->snd_buff == ((void*)0)) {
  device_printf(nic->dev,
      "Could not allocate memory for Tx buffers array\n");
  err = ENOMEM;
  goto error;
 }


 for (i = 0; i < q_len; i++) {
  err = bus_dmamap_create(sq->snd_buff_dmat, 0,
      &sq->snd_buff[i].dmap);
  if (err != 0) {
   device_printf(nic->dev,
       "Failed to create DMA maps for Tx buffers\n");
   goto error;
  }
 }
 NICVF_TX_UNLOCK(sq);


 TASK_INIT(&sq->snd_task, 0, nicvf_snd_task, sq);
 sq->snd_taskq = taskqueue_create_fast("nicvf_snd_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sq->snd_taskq);
 taskqueue_start_threads(&sq->snd_taskq, 1, PI_NET, "%s: snd_taskq(%d)",
     device_get_nameunit(nic->dev), qidx);

 return (0);
error:
 NICVF_TX_UNLOCK(sq);
 return (err);
}
