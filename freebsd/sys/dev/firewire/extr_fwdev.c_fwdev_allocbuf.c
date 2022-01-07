
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fw_xferq {int flag; int bnchunk; int bnpacket; int psize; TYPE_1__* bulkxfer; int stfree; int * stproc; int stdma; int stvalid; scalar_t__ queued; int * buf; } ;
struct fw_bulkxfer {int dummy; } ;
struct fw_bufspec {int nchunk; int psize; int npacket; } ;
struct firewire_comm {int dummy; } ;
struct TYPE_4__ {int poffset; int * mbuf; } ;


 int BUS_DMA_WAITOK ;
 int EBUSY ;
 int ENOMEM ;
 int FWXFERQ_EXTBUF ;
 int FWXFERQ_MODEMASK ;
 int FWXFERQ_RUNNING ;
 int FWXFERQ_STREAM ;
 int M_FW ;
 int M_WAITOK ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int free (TYPE_1__*,int ) ;
 int * fwdma_malloc_multiseg (struct firewire_comm*,int,int,int,int ) ;
 int link ;
 TYPE_1__* malloc (int,int ,int ) ;
 int roundup2 (int,int) ;

__attribute__((used)) static int
fwdev_allocbuf(struct firewire_comm *fc, struct fw_xferq *q,
 struct fw_bufspec *b)
{
 int i;

 if (q->flag & (FWXFERQ_RUNNING | FWXFERQ_EXTBUF))
  return (EBUSY);

 q->bulkxfer = malloc(sizeof(struct fw_bulkxfer) * b->nchunk,
     M_FW, M_WAITOK);

 b->psize = roundup2(b->psize, sizeof(uint32_t));
 q->buf = fwdma_malloc_multiseg(fc, sizeof(uint32_t),
     b->psize, b->nchunk * b->npacket, BUS_DMA_WAITOK);

 if (q->buf == ((void*)0)) {
  free(q->bulkxfer, M_FW);
  q->bulkxfer = ((void*)0);
  return (ENOMEM);
 }
 q->bnchunk = b->nchunk;
 q->bnpacket = b->npacket;
 q->psize = (b->psize + 3) & ~3;
 q->queued = 0;

 STAILQ_INIT(&q->stvalid);
 STAILQ_INIT(&q->stfree);
 STAILQ_INIT(&q->stdma);
 q->stproc = ((void*)0);

 for (i = 0; i < q->bnchunk; i++) {
  q->bulkxfer[i].poffset = i * q->bnpacket;
  q->bulkxfer[i].mbuf = ((void*)0);
  STAILQ_INSERT_TAIL(&q->stfree, &q->bulkxfer[i], link);
 }

 q->flag &= ~FWXFERQ_MODEMASK;
 q->flag |= FWXFERQ_STREAM;
 q->flag |= FWXFERQ_EXTBUF;

 return (0);
}
