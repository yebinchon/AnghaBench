
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct snd_mixer {int dummy; } ;
struct hdaa_widget {scalar_t__ enable; } ;
struct hdaa_pcm_devinfo {size_t recas; int recsrc; scalar_t__ playas; scalar_t__ index; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {struct hdaa_chan* chans; struct hdaa_audio_as* as; } ;
struct hdaa_chan {scalar_t__* io; } ;
struct hdaa_audio_ctl {scalar_t__ enable; int ossmask; scalar_t__* devmute; scalar_t__* devright; scalar_t__* devleft; TYPE_1__* widget; } ;
struct hdaa_audio_as {int num_chans; size_t* chans; int mixed; } ;
struct TYPE_2__ {scalar_t__ bindas; } ;


 int SOUND_MIXER_NRDEVICES ;
 int hdaa_audio_ctl_dev_volume (struct hdaa_pcm_devinfo*,int) ;
 struct hdaa_audio_ctl* hdaa_audio_ctl_each (struct hdaa_devinfo*,int*) ;
 int hdaa_audio_ctl_recsel_comm (struct hdaa_pcm_devinfo*,int,scalar_t__,int ) ;
 int hdaa_lock (struct hdaa_devinfo*) ;
 int hdaa_unlock (struct hdaa_devinfo*) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,scalar_t__) ;
 struct hdaa_pcm_devinfo* mix_getdevinfo (struct snd_mixer*) ;
 int mix_getrecdevs (struct snd_mixer*) ;

__attribute__((used)) static uint32_t
hdaa_audio_ctl_ossmixer_setrecsrc(struct snd_mixer *m, uint32_t src)
{
 struct hdaa_pcm_devinfo *pdevinfo = mix_getdevinfo(m);
 struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
 struct hdaa_widget *w;
 struct hdaa_audio_as *as;
 struct hdaa_audio_ctl *ctl;
 struct hdaa_chan *ch;
 int i, j;
 uint32_t ret = 0xffffffff;

 hdaa_lock(devinfo);
 if (pdevinfo->recas < 0) {
  hdaa_unlock(devinfo);
  return (0);
 }
 as = &devinfo->as[pdevinfo->recas];


 if (!as->mixed) {
  hdaa_unlock(devinfo);
  return (mix_getrecdevs(m));
 }


 for (j = 0; j < as->num_chans; j++) {
  ch = &devinfo->chans[as->chans[j]];
  for (i = 0; ch->io[i] >= 0; i++) {
   w = hdaa_widget_get(devinfo, ch->io[i]);
   if (w == ((void*)0) || w->enable == 0)
    continue;
   ret &= hdaa_audio_ctl_recsel_comm(pdevinfo, src,
       ch->io[i], 0);
  }
 }
 if (ret == 0xffffffff)
  ret = 0;






 i = 0;
 while ((ctl = hdaa_audio_ctl_each(devinfo, &i)) != ((void*)0)) {
  if (ctl->enable == 0 ||
      !(ctl->ossmask & pdevinfo->recsrc))
   continue;
  if (!((pdevinfo->playas >= 0 &&
      ctl->widget->bindas == pdevinfo->playas) ||
      (pdevinfo->recas >= 0 &&
      ctl->widget->bindas == pdevinfo->recas) ||
      (pdevinfo->index == 0 &&
      ctl->widget->bindas == -2)))
   continue;
  for (j = 0; j < SOUND_MIXER_NRDEVICES; j++) {
   if (pdevinfo->recsrc & (1 << j)) {
    ctl->devleft[j] = 0;
    ctl->devright[j] = 0;
    ctl->devmute[j] = 0;
   }
  }
 }





 for (j = 0; j < SOUND_MIXER_NRDEVICES; j++) {
  if ((ret | pdevinfo->recsrc) & (1 << j))
   hdaa_audio_ctl_dev_volume(pdevinfo, j);
 }

 pdevinfo->recsrc = ret;
 hdaa_unlock(devinfo);
 return (ret);
}
