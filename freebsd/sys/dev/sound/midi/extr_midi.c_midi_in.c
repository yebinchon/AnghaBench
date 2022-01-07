
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int flags; int inq_state; int inq_left; scalar_t__ inq_status; int qlock; scalar_t__ async; int rsel; scalar_t__ rchan; int inq; } ;
typedef int intmax_t ;
typedef scalar_t__ MIDI_TYPE ;


 int MIDIQ_AVAIL (int ) ;
 int MIDIQ_ENQ (int ,scalar_t__*,int) ;
 int MIDIQ_FULL (int ) ;
 scalar_t__ MIDIQ_LEN (int ) ;
 scalar_t__ MIDI_ACK ;
 int MIDI_DEBUG (int,int ) ;



 int MIDI_IS_COMMON (scalar_t__) ;
 int MIDI_IS_STATUS (scalar_t__) ;
 int MIDI_LENGTH (scalar_t__) ;
 scalar_t__ MIDI_SYSEX_END ;
 int M_RX ;
 int PROC_LOCK (scalar_t__) ;
 int PROC_UNLOCK (scalar_t__) ;
 int SIGIO ;
 scalar_t__ data ;
 int enq ;
 int i ;
 int kern_psignal (scalar_t__,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int selwakeup (int *) ;
 int sig ;
 int wakeup (scalar_t__*) ;

int
midi_in(struct snd_midi *m, MIDI_TYPE *buf, int size)
{

 int used;


 MIDI_DEBUG(5, printf("midi_in: m=%p size=%d\n", m, size));




 if (!(m->flags & M_RX))
  return size;

 used = 0;

 mtx_lock(&m->qlock);
  MIDI_DEBUG(6, printf("midi_in: len %jd avail %jd\n",
      (intmax_t)MIDIQ_LEN(m->inq),
      (intmax_t)MIDIQ_AVAIL(m->inq)));
  if (MIDIQ_AVAIL(m->inq) > size) {
   used = size;
   MIDIQ_ENQ(m->inq, buf, size);
  } else {
   MIDI_DEBUG(4, printf("midi_in: Discarding data qu\n"));
   mtx_unlock(&m->qlock);
   return 0;
  }
  if (m->rchan) {
   wakeup(&m->rchan);
   m->rchan = 0;
  }
  selwakeup(&m->rsel);
  if (m->async) {
   PROC_LOCK(m->async);
   kern_psignal(m->async, SIGIO);
   PROC_UNLOCK(m->async);
  }



 mtx_unlock(&m->qlock);
 return used;
}
