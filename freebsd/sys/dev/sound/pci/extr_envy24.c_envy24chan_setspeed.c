
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_chinfo {int speed; TYPE_1__* parent; } ;
typedef int kobj_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ abs (int) ;
 int device_printf (int ,char*,int) ;
 int* envy24_speed ;

__attribute__((used)) static u_int32_t
envy24chan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct sc_chinfo *ch = data;
 u_int32_t val, prev;
 int i;




 prev = 0x7fffffff;
 for (i = 0; (val = envy24_speed[i]) != 0; i++) {
  if (abs(val - speed) < abs(prev - speed))
   prev = val;
  else
   break;
 }
 ch->speed = prev;




 return ch->speed;
}
