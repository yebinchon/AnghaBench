
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdaa_chan {int* pcmrates; int spd; } ;
typedef int kobj_t ;



__attribute__((used)) static uint32_t
hdaa_channel_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct hdaa_chan *ch = data;
 uint32_t spd = 0, threshold;
 int i;


 for (i = 0; ch->pcmrates[i] != 0; i++) {
  spd = ch->pcmrates[i];
  if (speed != 0 && spd / speed * speed == spd) {
   ch->spd = spd;
   return (spd);
  }
 }

 for (i = 0; ch->pcmrates[i] != 0; i++) {
  spd = ch->pcmrates[i];
  threshold = spd + ((ch->pcmrates[i + 1] != 0) ?
      ((ch->pcmrates[i + 1] - spd) >> 1) : 0);
  if (speed < threshold)
   break;
 }
 ch->spd = spd;
 return (spd);
}
