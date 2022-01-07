
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct snd_midi {int flags; int lock; int qlock; int cookie; int inq; scalar_t__ async; scalar_t__ wchan; scalar_t__ rchan; int busy; int outq; } ;
struct cdev {struct snd_midi* si_drv1; } ;


 int EBUSY ;
 int ENXIO ;
 int FREAD ;
 int FWRITE ;
 int MIDIQ_CLEAR (int ) ;
 scalar_t__ MIDIQ_SIZE (int ) ;
 int MIDI_DEBUG (int,int ) ;
 int MPU_CALLBACK (struct snd_midi*,int ,int) ;
 int M_RX ;
 int M_RXEN ;
 int M_TX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;

int
midi_open(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
 struct snd_midi *m = i_dev->si_drv1;
 int retval;

 MIDI_DEBUG(1, printf("midiopen %p %s %s\n", td,
     flags & FREAD ? "M_RX" : "", flags & FWRITE ? "M_TX" : ""));
 if (m == ((void*)0))
  return ENXIO;

 mtx_lock(&m->lock);
 mtx_lock(&m->qlock);

 retval = 0;

 if (flags & FREAD) {
  if (MIDIQ_SIZE(m->inq) == 0)
   retval = ENXIO;
  else if (m->flags & M_RX)
   retval = EBUSY;
  if (retval)
   goto err;
 }
 if (flags & FWRITE) {
  if (MIDIQ_SIZE(m->outq) == 0)
   retval = ENXIO;
  else if (m->flags & M_TX)
   retval = EBUSY;
  if (retval)
   goto err;
 }
 m->busy++;

 m->rchan = 0;
 m->wchan = 0;
 m->async = 0;

 if (flags & FREAD) {
  m->flags |= M_RX | M_RXEN;




  MIDIQ_CLEAR(m->inq);
 }

 if (flags & FWRITE)
  m->flags |= M_TX;

 MPU_CALLBACK(m, m->cookie, m->flags);

 MIDI_DEBUG(2, printf("midi_open: opened.\n"));

err: mtx_unlock(&m->qlock);
 mtx_unlock(&m->lock);
 return retval;
}
