
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_feederdesc {int dummy; } ;
struct pcm_feeder {struct pcm_feeder* parent; struct pcm_feeder* source; } ;
struct pcm_channel {struct pcm_feeder* feeder; } ;
struct feeder_class {int dummy; } ;


 int ENOSPC ;
 struct pcm_feeder* feeder_create (struct feeder_class*,struct pcm_feederdesc*) ;

int
chn_addfeeder(struct pcm_channel *c, struct feeder_class *fc, struct pcm_feederdesc *desc)
{
 struct pcm_feeder *nf;

 nf = feeder_create(fc, desc);
 if (nf == ((void*)0))
  return ENOSPC;

 nf->source = c->feeder;

 if (c->feeder != ((void*)0))
  c->feeder->parent = nf;
 c->feeder = nf;

 return 0;
}
