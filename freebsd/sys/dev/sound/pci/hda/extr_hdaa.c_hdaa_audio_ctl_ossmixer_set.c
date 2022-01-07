
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct snd_mixer {int dummy; } ;
struct TYPE_2__ {int eapdbtl; } ;
struct hdaa_widget {scalar_t__ enable; scalar_t__ type; int nid; TYPE_1__ param; } ;
struct hdaa_pcm_devinfo {unsigned int* left; unsigned int* right; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {int startnode; int endnode; int quirks; int dev; } ;


 int HDAA_QUIRK_EAPDINV ;
 int HDA_CMD_SET_EAPD_BTL_ENABLE (int ,int ,int ) ;
 int HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD ;
 int HDA_INVALID ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 unsigned int SOUND_MIXER_OGAIN ;
 int hda_command (int ,int ) ;
 int hdaa_audio_ctl_dev_volume (struct hdaa_pcm_devinfo*,unsigned int) ;
 int hdaa_lock (struct hdaa_devinfo*) ;
 int hdaa_unlock (struct hdaa_devinfo*) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;
 struct hdaa_pcm_devinfo* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
hdaa_audio_ctl_ossmixer_set(struct snd_mixer *m, unsigned dev,
     unsigned left, unsigned right)
{
 struct hdaa_pcm_devinfo *pdevinfo = mix_getdevinfo(m);
 struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
 struct hdaa_widget *w;
 int i;

 hdaa_lock(devinfo);


 pdevinfo->left[dev] = left;
 pdevinfo->right[dev] = right;


 if (dev == SOUND_MIXER_OGAIN) {
  uint32_t orig;
  w = ((void*)0);
  for (i = devinfo->startnode; i < devinfo->endnode; i++) {
   w = hdaa_widget_get(devinfo, i);
   if (w == ((void*)0) || w->enable == 0)
    continue;
   if (w->type != HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ||
       w->param.eapdbtl == HDA_INVALID)
    continue;
   break;
  }
  if (i >= devinfo->endnode) {
   hdaa_unlock(devinfo);
   return (-1);
  }
  orig = w->param.eapdbtl;
  if (left == 0)
   w->param.eapdbtl &= ~HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD;
  else
   w->param.eapdbtl |= HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD;
  if (orig != w->param.eapdbtl) {
   uint32_t val;

   val = w->param.eapdbtl;
   if (devinfo->quirks & HDAA_QUIRK_EAPDINV)
    val ^= HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD;
   hda_command(devinfo->dev,
       HDA_CMD_SET_EAPD_BTL_ENABLE(0, w->nid, val));
  }
  hdaa_unlock(devinfo);
  return (left | (left << 8));
 }


 hdaa_audio_ctl_dev_volume(pdevinfo, dev);

 hdaa_unlock(devinfo);
 return (left | (right << 8));
}
