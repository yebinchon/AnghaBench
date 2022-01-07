
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_midi {struct snd_midi* m; } ;
struct snd_midi {int flags; int synth_flags; int lock; int qlock; int cookie; scalar_t__ wchan; scalar_t__ rchan; int inq; int busy; int outq; } ;


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
midisynth_open(void *n, void *arg, int flags)
{
 struct snd_midi *m = ((struct synth_midi *)n)->m;
 int retval;

 MIDI_DEBUG(1, printf("midisynth_open %s %s\n",
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





 if (flags & FREAD) {
  m->flags |= M_RX | M_RXEN;




  MIDIQ_CLEAR(m->inq);
  m->rchan = 0;
 }

 if (flags & FWRITE) {
  m->flags |= M_TX;
  m->wchan = 0;
 }
 m->synth_flags = flags & (FREAD | FWRITE);

 MPU_CALLBACK(m, m->cookie, m->flags);


err: mtx_unlock(&m->qlock);
 mtx_unlock(&m->lock);
 MIDI_DEBUG(2, printf("midisynth_open: return %d.\n", retval));
 return retval;
}
