
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int PCMTRIG_EMLDMARD ;
 int chn_dmaupdate (struct pcm_channel*) ;
 int chn_rdfeed (struct pcm_channel*) ;
 int chn_trigger (struct pcm_channel*,int ) ;

__attribute__((used)) static void
chn_rdintr(struct pcm_channel *c)
{

 CHN_LOCKASSERT(c);

 chn_trigger(c, PCMTRIG_EMLDMARD);

 chn_dmaupdate(c);

 chn_rdfeed(c);
}
