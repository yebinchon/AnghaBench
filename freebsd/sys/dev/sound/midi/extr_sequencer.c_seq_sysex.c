
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct seq_softc {int unit; int seq_lock; } ;
typedef int kobj_t ;


 scalar_t__ EAGAIN ;
 int MA_OWNED ;
 int SEQ_DEBUG (int,int ) ;
 scalar_t__ SYNTH_SENDSYSEX (int ,int*,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
seq_sysex(struct seq_softc *scp, kobj_t md, u_char *event)
{
 int i, l;

 mtx_assert(&scp->seq_lock, MA_OWNED);
 SEQ_DEBUG(5, printf("seq_sysex: unit %d device %d\n", scp->unit,
     event[1]));
 l = 0;
 for (i = 0; i < 6 && event[i + 2] != 0xff; i++)
  l = i + 1;
 if (l > 0) {
  mtx_unlock(&scp->seq_lock);
  if (SYNTH_SENDSYSEX(md, &event[2], l) == EAGAIN) {
   mtx_lock(&scp->seq_lock);
   return 1;
  }
  mtx_lock(&scp->seq_lock);
 }
 return 0;
}
