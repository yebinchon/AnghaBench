
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct snd_midi {int flags; int busy; int lock; int qlock; int cookie; } ;
struct cdev {struct snd_midi* si_drv1; } ;


 int ENXIO ;
 int FREAD ;
 int FWRITE ;
 int MIDI_DEBUG (int,int ) ;
 int MPU_CALLBACK (struct snd_midi*,int ,int) ;
 int M_RX ;
 int M_RXEN ;
 int M_TX ;
 int M_TXEN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,...) ;

int
midi_close(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
 struct snd_midi *m = i_dev->si_drv1;
 int retval;
 int oldflags;

 MIDI_DEBUG(1, printf("midi_close %p %s %s\n", td,
     flags & FREAD ? "M_RX" : "", flags & FWRITE ? "M_TX" : ""));

 if (m == ((void*)0))
  return ENXIO;

 mtx_lock(&m->lock);
 mtx_lock(&m->qlock);

 if ((flags & FREAD && !(m->flags & M_RX)) ||
     (flags & FWRITE && !(m->flags & M_TX))) {
  retval = ENXIO;
  goto err;
 }
 m->busy--;

 oldflags = m->flags;

 if (flags & FREAD)
  m->flags &= ~(M_RX | M_RXEN);
 if (flags & FWRITE)
  m->flags &= ~M_TX;

 if ((m->flags & (M_TXEN | M_RXEN)) != (oldflags & (M_RXEN | M_TXEN)))
  MPU_CALLBACK(m, m->cookie, m->flags);

 MIDI_DEBUG(1, printf("midi_close: closed, busy = %d.\n", m->busy));

 mtx_unlock(&m->qlock);
 mtx_unlock(&m->lock);
 retval = 0;
err: return retval;
}
