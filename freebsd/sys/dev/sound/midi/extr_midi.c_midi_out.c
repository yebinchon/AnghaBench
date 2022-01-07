
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int flags; scalar_t__ hiwat; int qlock; scalar_t__ async; int wsel; scalar_t__ wchan; int outq; int cookie; } ;
typedef int MIDI_TYPE ;


 scalar_t__ MIDIQ_AVAIL (int ) ;
 int MIDIQ_DEQ (int ,int *,int) ;
 scalar_t__ MIDIQ_EMPTY (int ) ;
 int MIDIQ_LEN (int ) ;
 int MIDI_DEBUG (int,int ) ;
 int MIN (int,int ) ;
 int MPU_CALLBACKP (struct snd_midi*,int ,int) ;
 int M_TXEN ;
 int PROC_LOCK (scalar_t__) ;
 int PROC_UNLOCK (scalar_t__) ;
 int SIGIO ;
 int kern_psignal (scalar_t__,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int selwakeup (int *) ;
 int wakeup (scalar_t__*) ;

int
midi_out(struct snd_midi *m, MIDI_TYPE *buf, int size)
{
 int used;




 if (!(m->flags & M_TXEN))
  return 0;

 MIDI_DEBUG(2, printf("midi_out: %p\n", m));
 mtx_lock(&m->qlock);
 used = MIN(size, MIDIQ_LEN(m->outq));
 MIDI_DEBUG(3, printf("midi_out: used %d\n", used));
 if (used)
  MIDIQ_DEQ(m->outq, buf, used);
 if (MIDIQ_EMPTY(m->outq)) {
  m->flags &= ~M_TXEN;
  MPU_CALLBACKP(m, m->cookie, m->flags);
 }
 if (used && MIDIQ_AVAIL(m->outq) > m->hiwat) {
  if (m->wchan) {
   wakeup(&m->wchan);
   m->wchan = 0;
  }
  selwakeup(&m->wsel);
  if (m->async) {
   PROC_LOCK(m->async);
   kern_psignal(m->async, SIGIO);
   PROC_UNLOCK(m->async);
  }
 }
 mtx_unlock(&m->qlock);
 return used;
}
