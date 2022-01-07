
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UBYTE ;
struct TYPE_3__ {size_t x; size_t y; } ;
struct TYPE_4__ {size_t w; size_t h; TYPE_1__ pos; } ;


 size_t scene_num_triggers ;
 TYPE_2__* triggers ;

UBYTE SceneTriggerAt_b(UBYTE tx_a, UBYTE ty_a)
{
  UBYTE i, tx_b, ty_b, tx_c, ty_c;

  for (i = 0; i != scene_num_triggers; i++)
  {
    tx_b = triggers[i].pos.x;
    ty_b = triggers[i].pos.y + 1;
    tx_c = tx_b + triggers[i].w;
    ty_c = ty_b + triggers[i].h - 1;

    if (tx_a >= tx_b && tx_a <= tx_c && ty_a >= ty_b && ty_a <= ty_c)
    {
      return i;
    }
  }

  return scene_num_triggers;
}
