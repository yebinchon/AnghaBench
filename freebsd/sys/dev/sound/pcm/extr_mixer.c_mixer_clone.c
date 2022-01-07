
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct snddev_info {struct cdev* mixer_dev; } ;
struct cdev {int dummy; } ;


 scalar_t__ PCM_REGISTERED (struct snddev_info*) ;
 int dev_ref (struct cdev*) ;
 struct snddev_info* devclass_get_softc (int ,int ) ;
 int pcm_devclass ;
 int snd_unit ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
mixer_clone(void *arg,
    struct ucred *cred,
    char *name, int namelen, struct cdev **dev)
{
 struct snddev_info *d;

 if (*dev != ((void*)0))
  return;
 if (strcmp(name, "mixer") == 0) {
  d = devclass_get_softc(pcm_devclass, snd_unit);
  if (PCM_REGISTERED(d) && d->mixer_dev != ((void*)0)) {
   *dev = d->mixer_dev;
   dev_ref(*dev);
  }
 }
}
