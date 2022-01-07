
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct snd_midi {int flags; int wchan; int lock; int qlock; int cookie; int outq; int busy; } ;
struct cdev {struct snd_midi* si_drv1; } ;
typedef int intmax_t ;


 int EINTR ;
 int ENXIO ;
 int EWOULDBLOCK ;
 int MIDIQ_AVAIL (int ) ;
 int MIDIQ_ENQ (int ,char*,int) ;
 scalar_t__ MIDIQ_LEN (int ) ;
 int MIDI_DEBUG (int,int ) ;
 int MIDI_WSIZE ;
 int MIN (int,int) ;
 int MPU_CALLBACK (struct snd_midi*,int ,int) ;
 int M_TX ;
 int M_TXEN ;
 int O_NONBLOCK ;
 int PCATCH ;
 int PDROP ;
 int msleep (int*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int uiomove (char*,int,struct uio*) ;

int
midi_write(struct cdev *i_dev, struct uio *uio, int ioflag)
{

 struct snd_midi *m = i_dev->si_drv1;
 int retval;
 int used;
 char buf[32];


 MIDI_DEBUG(4, printf("midi_write\n"));
 retval = 0;
 if (m == ((void*)0))
  goto err0;

 mtx_lock(&m->lock);
 mtx_lock(&m->qlock);

 if (!(m->flags & M_TX))
  goto err1;

 while (uio->uio_resid > 0) {
  while (MIDIQ_AVAIL(m->outq) == 0) {
   retval = EWOULDBLOCK;
   if (ioflag & O_NONBLOCK)
    goto err1;
   mtx_unlock(&m->lock);
   m->wchan = 1;
   MIDI_DEBUG(3, printf("midi_write msleep\n"));
   retval = msleep(&m->wchan, &m->qlock,
       PCATCH | PDROP, "midi TX", 0);




   if (retval == EINTR)
    goto err0;
   if (m != i_dev->si_drv1)
    retval = ENXIO;
   if (retval)
    goto err0;
   mtx_lock(&m->lock);
   mtx_lock(&m->qlock);
   m->wchan = 0;
   if (!m->busy)
    goto err1;
  }





  used = MIN(MIDIQ_AVAIL(m->outq), uio->uio_resid);
  used = MIN(used, 32);
  MIDI_DEBUG(5, printf("midiout: resid %zd len %jd avail %jd\n",
      uio->uio_resid, (intmax_t)MIDIQ_LEN(m->outq),
      (intmax_t)MIDIQ_AVAIL(m->outq)));


  MIDI_DEBUG(5, printf("midi_write: uiomove cc=%d\n", used));
  retval = uiomove(buf, used, uio);
  if (retval)
   goto err1;
  MIDIQ_ENQ(m->outq, buf, used);



  if (!(m->flags & M_TXEN)) {
   m->flags |= M_TXEN;
   MPU_CALLBACK(m, m->cookie, m->flags);
  }
 }



 retval = 0;
err1: mtx_unlock(&m->qlock);
 mtx_unlock(&m->lock);
err0: return retval;
}
