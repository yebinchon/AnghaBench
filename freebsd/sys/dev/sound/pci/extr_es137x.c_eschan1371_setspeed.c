
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct es_info {int dummy; } ;
struct es_chinfo {scalar_t__ dir; int index; struct es_info* parent; } ;
typedef int kobj_t ;


 int ES_LOCK (struct es_info*) ;
 int ES_UNLOCK (struct es_info*) ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ es1371_adc_rate (struct es_info*,scalar_t__,int ) ;
 scalar_t__ es1371_dac_rate (struct es_info*,scalar_t__,int ) ;

__attribute__((used)) static uint32_t
eschan1371_setspeed(kobj_t obj, void *data, uint32_t speed)
{
   struct es_chinfo *ch = data;
   struct es_info *es = ch->parent;
 uint32_t i;
 int delta;

 ES_LOCK(es);
 if (ch->dir == PCMDIR_PLAY)
    i = es1371_dac_rate(es, speed, ch->index);
 else
    i = es1371_adc_rate(es, speed, ch->index);
 ES_UNLOCK(es);
 delta = (speed > i) ? (speed - i) : (i - speed);
 if (delta < 2)
  return (speed);
 return (i);
}
