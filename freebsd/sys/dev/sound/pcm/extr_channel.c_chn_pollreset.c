
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int bufsoft; } ;


 int CHN_LOCKASSERT (struct pcm_channel*) ;
 int sndbuf_updateprevtotal (int ) ;

__attribute__((used)) static void
chn_pollreset(struct pcm_channel *c)
{

 CHN_LOCKASSERT(c);
 sndbuf_updateprevtotal(c->bufsoft);
}
