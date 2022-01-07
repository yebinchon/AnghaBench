
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_rchinfo {int num; int spd; TYPE_1__* parent; } ;
typedef int kobj_t ;
struct TYPE_2__ {scalar_t__ audigy; } ;


 int* adcspeed ;
 int* audigy_adcspeed ;
 size_t audigy_recval (int) ;
 size_t emu_recval (int) ;

__attribute__((used)) static u_int32_t
emurchan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct sc_rchinfo *ch = data;

 if (ch->num == 0) {
  if (ch->parent->audigy)
   speed = audigy_adcspeed[audigy_recval(speed)];
  else
   speed = adcspeed[emu_recval(speed)];
 }
 if (ch->num == 1)
  speed = 48000;
 if (ch->num == 2)
  speed = 8000;
 ch->spd = speed;
 return ch->spd;
}
