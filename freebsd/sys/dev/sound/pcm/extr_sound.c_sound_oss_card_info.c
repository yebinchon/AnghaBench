
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snddev_info {int status; int dev; } ;
struct TYPE_3__ {scalar_t__ ack_count; scalar_t__ intr_count; int hw_info; int longname; int shortname; int card; } ;
typedef TYPE_1__ oss_card_info ;


 int ENXIO ;
 int PCM_LOCK (struct snddev_info*) ;
 int PCM_REGISTERED (struct snddev_info*) ;
 int PCM_UNLOCK (struct snddev_info*) ;
 int PCM_UNLOCKASSERT (struct snddev_info*) ;
 int devclass_get_maxunit (int *) ;
 struct snddev_info* devclass_get_softc (int *,int) ;
 int device_get_desc (int ) ;
 int device_get_nameunit (int ) ;
 int * pcm_devclass ;
 int strlcpy (int ,int ,int) ;

int
sound_oss_card_info(oss_card_info *si)
{
 struct snddev_info *d;
 int i, ncards;

 ncards = 0;

 for (i = 0; pcm_devclass != ((void*)0) &&
     i < devclass_get_maxunit(pcm_devclass); i++) {
  d = devclass_get_softc(pcm_devclass, i);
  if (!PCM_REGISTERED(d))
   continue;

  if (ncards++ != si->card)
   continue;

  PCM_UNLOCKASSERT(d);
  PCM_LOCK(d);

  strlcpy(si->shortname, device_get_nameunit(d->dev),
      sizeof(si->shortname));
  strlcpy(si->longname, device_get_desc(d->dev),
      sizeof(si->longname));
  strlcpy(si->hw_info, d->status, sizeof(si->hw_info));
  si->intr_count = si->ack_count = 0;

  PCM_UNLOCK(d);

  return (0);
 }
 return (ENXIO);
}
