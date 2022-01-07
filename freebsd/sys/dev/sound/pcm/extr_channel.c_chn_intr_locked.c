
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {scalar_t__ direction; int interrupts; } ;


 int CHN_LOCKASSERT (struct pcm_channel*) ;
 scalar_t__ PCMDIR_PLAY ;
 int chn_rdintr (struct pcm_channel*) ;
 int chn_wrintr (struct pcm_channel*) ;

void
chn_intr_locked(struct pcm_channel *c)
{

 CHN_LOCKASSERT(c);

 c->interrupts++;

 if (c->direction == PCMDIR_PLAY)
  chn_wrintr(c);
 else
  chn_rdintr(c);
}
