
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emu_voice {int b16; int stereo; int speed; TYPE_1__* slave; } ;
struct TYPE_2__ {int b16; int stereo; int speed; } ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;

void
emu_vsetup(struct emu_voice *v, int fmt, int spd)
{
 if (fmt) {
  v->b16 = (fmt & AFMT_16BIT) ? 1 : 0;
  v->stereo = (AFMT_CHANNEL(fmt) > 1) ? 1 : 0;
  if (v->slave != ((void*)0)) {
   v->slave->b16 = v->b16;
   v->slave->stereo = v->stereo;
  }
 }
 if (spd) {
  v->speed = spd;
  if (v->slave != ((void*)0))
   v->slave->speed = v->speed;
 }
}
