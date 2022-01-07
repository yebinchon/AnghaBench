
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_feeder {struct pcm_feeder* source; } ;
struct pcm_channel {struct pcm_feeder* feeder; } ;


 int feeder_destroy (struct pcm_feeder*) ;

int
chn_removefeeder(struct pcm_channel *c)
{
 struct pcm_feeder *f;

 if (c->feeder == ((void*)0))
  return -1;
 f = c->feeder;
 c->feeder = c->feeder->source;
 feeder_destroy(f);

 return 0;
}
