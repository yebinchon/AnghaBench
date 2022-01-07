
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xferq {int flag; } ;
struct firewire_comm {int nisodma; struct fw_xferq** ir; struct fw_xferq** it; } ;


 int FWXFERQ_OPEN ;
 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 int printf (char*,int) ;

int
fw_open_isodma(struct firewire_comm *fc, int tx)
{
 struct fw_xferq **xferqa;
 struct fw_xferq *xferq;
 int i;

 if (tx)
  xferqa = &fc->it[0];
 else
  xferqa = &fc->ir[0];

 FW_GLOCK(fc);
 for (i = 0; i < fc->nisodma; i++) {
  xferq = xferqa[i];
  if ((xferq->flag & FWXFERQ_OPEN) == 0) {
   xferq->flag |= FWXFERQ_OPEN;
   break;
  }
 }
 if (i == fc->nisodma) {
  printf("no free dma channel (tx=%d)\n", tx);
  i = -1;
 }
 FW_GUNLOCK(fc);
 return (i);
}
