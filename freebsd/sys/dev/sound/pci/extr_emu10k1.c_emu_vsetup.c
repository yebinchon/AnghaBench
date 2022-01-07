
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_pchinfo {int fmt; scalar_t__ spd; struct emu_voice* master; } ;
struct emu_voice {int b16; int stereo; scalar_t__ speed; TYPE_1__* slave; } ;
struct TYPE_2__ {int b16; int stereo; scalar_t__ speed; } ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;

__attribute__((used)) static void
emu_vsetup(struct sc_pchinfo *ch)
{
 struct emu_voice *v = ch->master;

 if (ch->fmt) {
  v->b16 = (ch->fmt & AFMT_16BIT) ? 1 : 0;
  v->stereo = (AFMT_CHANNEL(ch->fmt) > 1) ? 1 : 0;
  if (v->slave != ((void*)0)) {
   v->slave->b16 = v->b16;
   v->slave->stereo = v->stereo;
  }
 }
 if (ch->spd) {
  v->speed = ch->spd;
  if (v->slave != ((void*)0))
   v->slave->speed = v->speed;
 }
}
