
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int chn_resizebuf (struct pcm_channel*,int,int,int ) ;

int
chn_setlatency(struct pcm_channel *c, int latency)
{
 CHN_LOCKASSERT(c);

 return chn_resizebuf(c, latency, -1, 0);
}
