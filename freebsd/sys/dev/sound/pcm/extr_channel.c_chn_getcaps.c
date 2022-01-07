
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
struct pcm_channel {int devinfo; int methods; } ;


 struct pcmchan_caps* CHANNEL_GETCAPS (int ,int ) ;
 int CHN_LOCKASSERT (struct pcm_channel*) ;

struct pcmchan_caps *
chn_getcaps(struct pcm_channel *c)
{
 CHN_LOCKASSERT(c);
 return CHANNEL_GETCAPS(c->methods, c->devinfo);
}
