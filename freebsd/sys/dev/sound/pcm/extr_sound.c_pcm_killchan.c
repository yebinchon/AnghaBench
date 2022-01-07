
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snddev_info {int dummy; } ;
struct pcm_channel {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int pcm; } ;


 struct pcm_channel* CHN_FIRST (struct snddev_info*,int ) ;
 int PCM_BUSYASSERT (struct snddev_info*) ;
 int PCM_LOCK (struct snddev_info*) ;
 int PCM_UNLOCK (struct snddev_info*) ;
 TYPE_1__ channels ;
 struct snddev_info* device_get_softc (int ) ;
 int pcm_chn_destroy (struct pcm_channel*) ;
 int pcm_chn_remove (struct snddev_info*,struct pcm_channel*) ;

__attribute__((used)) static int
pcm_killchan(device_t dev)
{
 struct snddev_info *d = device_get_softc(dev);
 struct pcm_channel *ch;
 int error;

 PCM_BUSYASSERT(d);

 ch = CHN_FIRST(d, channels.pcm);

 PCM_LOCK(d);
 error = pcm_chn_remove(d, ch);
 PCM_UNLOCK(d);
 if (error)
  return (error);
 return (pcm_chn_destroy(ch));
}
