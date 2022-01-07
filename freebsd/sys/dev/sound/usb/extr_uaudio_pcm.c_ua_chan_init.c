
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dummy; } ;
struct pcm_channel {int dummy; } ;
typedef int kobj_t ;


 void* uaudio_chan_init (void*,struct snd_dbuf*,struct pcm_channel*,int) ;

__attribute__((used)) static void *
ua_chan_init(kobj_t obj, void *devinfo, struct snd_dbuf *b, struct pcm_channel *c, int dir)
{
 return (uaudio_chan_init(devinfo, b, c, dir));
}
