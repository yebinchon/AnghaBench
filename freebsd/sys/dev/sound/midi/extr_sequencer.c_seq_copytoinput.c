
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct seq_softc {int in_cv; int in_sel; int in_q; int seq_lock; } ;


 int MA_OWNED ;
 int MIDIQ_AVAIL (int ) ;
 int MIDIQ_ENQ (int ,int *,int) ;
 int SEQ_DEBUG (int,int ) ;
 int cv_broadcast (int *) ;
 int mtx_assert (int *,int ) ;
 int printf (char*) ;
 int selwakeup (int *) ;

void
seq_copytoinput(struct seq_softc *scp, u_char *event, int len)
{

 mtx_assert(&scp->seq_lock, MA_OWNED);

 if (MIDIQ_AVAIL(scp->in_q) < len) {



  SEQ_DEBUG(2, printf("seq_copytoinput: queue full\n"));
 } else {
  MIDIQ_ENQ(scp->in_q, event, len);
  selwakeup(&scp->in_sel);
  cv_broadcast(&scp->in_cv);
 }

}
