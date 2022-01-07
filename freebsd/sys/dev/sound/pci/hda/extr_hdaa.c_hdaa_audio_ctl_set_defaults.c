
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_pcm_devinfo {int ossmask; int* maxamp; int* minamp; int mixer; int digital; int dev; } ;


 int SOUND_MIXER_IGAIN ;
 int SOUND_MIXER_MIC ;
 int SOUND_MIXER_MONITOR ;
 int SOUND_MIXER_NRDEVICES ;
 int SOUND_MIXER_OGAIN ;
 int SOUND_MIXER_VOLUME ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int imax (int,int) ;
 int imin (int ,int) ;
 int mix_set (int ,int,int,int) ;
 int * ossnames ;
 scalar_t__ resource_int_value (int ,int ,int ,int*) ;

__attribute__((used)) static void
hdaa_audio_ctl_set_defaults(struct hdaa_pcm_devinfo *pdevinfo)
{
 int amp, vol, dev;

 for (dev = 0; dev < SOUND_MIXER_NRDEVICES; dev++) {
  if ((pdevinfo->ossmask & (1 << dev)) == 0)
   continue;


  if (resource_int_value(device_get_name(pdevinfo->dev),
      device_get_unit(pdevinfo->dev), ossnames[dev], &vol) == 0)
   continue;

  vol = -1;
  if (dev == SOUND_MIXER_OGAIN)
   vol = 100;
  else if (dev == SOUND_MIXER_IGAIN)
   vol = 0;
  else if (dev == SOUND_MIXER_MIC ||
      dev == SOUND_MIXER_MONITOR)
   amp = 20 * 4;
  else if (dev == SOUND_MIXER_VOLUME && !pdevinfo->digital)
   amp = -10 * 4;
  else
   amp = 0;
  if (vol < 0 &&
      (pdevinfo->maxamp[dev] - pdevinfo->minamp[dev]) <= 0) {
   vol = 100;
  } else if (vol < 0) {
   vol = ((amp - pdevinfo->minamp[dev]) * 100 +
       (pdevinfo->maxamp[dev] - pdevinfo->minamp[dev]) / 2) /
       (pdevinfo->maxamp[dev] - pdevinfo->minamp[dev]);
   vol = imin(imax(vol, 1), 100);
  }
  mix_set(pdevinfo->mixer, dev, vol, vol);
 }
}
