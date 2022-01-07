
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
struct uaudio_chan {struct pcmchan_caps pcm_cap; } ;



struct pcmchan_caps *
uaudio_chan_getcaps(struct uaudio_chan *ch)
{
 return (&ch->pcm_cap);
}
