
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int PCMTRIG_EMLDMAWR ;
 int chn_dmaupdate (struct pcm_channel*) ;
 int chn_trigger (struct pcm_channel*,int ) ;
 int chn_wrfeed (struct pcm_channel*) ;

__attribute__((used)) static void
chn_wrintr(struct pcm_channel *c)
{

 CHN_LOCKASSERT(c);

 chn_dmaupdate(c);

 chn_wrfeed(c);

 chn_trigger(c, PCMTRIG_EMLDMAWR);
}
