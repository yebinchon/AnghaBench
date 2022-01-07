
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct pcm_feeder {struct pcm_feeder* source; TYPE_1__* desc; } ;
struct pcm_channel {struct pcm_feeder* feeder; } ;
struct TYPE_2__ {scalar_t__ type; } ;



struct pcm_feeder *
chn_findfeeder(struct pcm_channel *c, u_int32_t type)
{
 struct pcm_feeder *f;

 f = c->feeder;
 while (f != ((void*)0)) {
  if (f->desc->type == type)
   return f;
  f = f->source;
 }

 return ((void*)0);
}
