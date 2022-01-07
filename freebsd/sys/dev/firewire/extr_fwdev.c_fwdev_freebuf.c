
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xferq {int flag; int maxq; scalar_t__ psize; int * bulkxfer; int * buf; } ;


 int FWMAXQUEUE ;
 int FWXFERQ_EXTBUF ;
 int M_FW ;
 int free (int *,int ) ;
 int fwdma_free_multiseg (int *) ;

__attribute__((used)) static int
fwdev_freebuf(struct fw_xferq *q)
{
 if (q->flag & FWXFERQ_EXTBUF) {
  if (q->buf != ((void*)0))
   fwdma_free_multiseg(q->buf);
  q->buf = ((void*)0);
  free(q->bulkxfer, M_FW);
  q->bulkxfer = ((void*)0);
  q->flag &= ~FWXFERQ_EXTBUF;
  q->psize = 0;
  q->maxq = FWMAXQUEUE;
 }
 return (0);
}
