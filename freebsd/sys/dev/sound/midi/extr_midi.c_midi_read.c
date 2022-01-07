
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct snd_midi {int flags; int rchan; int lock; int qlock; int inq; int busy; } ;
struct cdev {struct snd_midi* si_drv1; } ;


 int EINTR ;
 int EIO ;
 int ENXIO ;
 int EWOULDBLOCK ;
 int MIDIQ_DEQ (int ,char*,int) ;
 scalar_t__ MIDIQ_EMPTY (int ) ;
 int MIDIQ_LEN (int ) ;
 int MIDI_DEBUG (int,int ) ;
 int MIDI_RSIZE ;
 int MIN (int,int) ;
 int M_RX ;
 int O_NONBLOCK ;
 int PCATCH ;
 int PDROP ;
 int msleep (int*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int uiomove (char*,int,struct uio*) ;

int
midi_read(struct cdev *i_dev, struct uio *uio, int ioflag)
{

 struct snd_midi *m = i_dev->si_drv1;
 int retval;
 int used;
 char buf[32];

 MIDI_DEBUG(5, printf("midiread: count=%lu\n",
     (unsigned long)uio->uio_resid));

 retval = EIO;

 if (m == ((void*)0))
  goto err0;

 mtx_lock(&m->lock);
 mtx_lock(&m->qlock);

 if (!(m->flags & M_RX))
  goto err1;

 while (uio->uio_resid > 0) {
  while (MIDIQ_EMPTY(m->inq)) {
   retval = EWOULDBLOCK;
   if (ioflag & O_NONBLOCK)
    goto err1;
   mtx_unlock(&m->lock);
   m->rchan = 1;
   retval = msleep(&m->rchan, &m->qlock,
       PCATCH | PDROP, "midi RX", 0);




   if (retval == EINTR)
    goto err0;
   if (m != i_dev->si_drv1)
    retval = ENXIO;

   if (retval)
    goto err0;
   mtx_lock(&m->lock);
   mtx_lock(&m->qlock);
   m->rchan = 0;
   if (!m->busy)
    goto err1;
  }
  MIDI_DEBUG(6, printf("midi_read start\n"));




  used = MIN(MIDIQ_LEN(m->inq), uio->uio_resid);
  used = MIN(used, 32);

  MIDI_DEBUG(6, printf("midiread: uiomove cc=%d\n", used));
  MIDIQ_DEQ(m->inq, buf, used);
  retval = uiomove(buf, used, uio);
  if (retval)
   goto err1;
 }




 retval = 0;
err1: mtx_unlock(&m->qlock);
 mtx_unlock(&m->lock);
err0: MIDI_DEBUG(4, printf("midi_read: ret %d\n", retval));
 return retval;
}
