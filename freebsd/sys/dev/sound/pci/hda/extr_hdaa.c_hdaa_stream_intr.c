
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_devinfo {int num_chans; struct hdaa_chan* chans; } ;
struct hdaa_chan {int flags; scalar_t__ dir; int sid; int c; } ;
typedef int device_t ;


 int HDAA_CHN_RUNNING ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;
 int chn_intr (int ) ;
 struct hdaa_devinfo* device_get_softc (int ) ;
 int hdaa_lock (struct hdaa_devinfo*) ;
 int hdaa_unlock (struct hdaa_devinfo*) ;

__attribute__((used)) static void
hdaa_stream_intr(device_t dev, int dir, int stream)
{
 struct hdaa_devinfo *devinfo = device_get_softc(dev);
 struct hdaa_chan *ch;
 int i;

 for (i = 0; i < devinfo->num_chans; i++) {
  ch = &devinfo->chans[i];
  if (!(ch->flags & HDAA_CHN_RUNNING))
   continue;
  if (ch->dir == ((dir == 1) ? PCMDIR_PLAY : PCMDIR_REC) &&
      ch->sid == stream) {
   hdaa_unlock(devinfo);
   chn_intr(ch->c);
   hdaa_lock(devinfo);
  }
 }
}
