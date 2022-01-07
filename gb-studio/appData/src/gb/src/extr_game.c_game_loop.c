
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {int y; int x; } ;
struct TYPE_10__ {TYPE_2__ dir; TYPE_1__ pos; } ;
struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;


 int FadeUpdate () ;
 int IsFading () ;
 int LYC_REG ;
 scalar_t__ SCENE ;
 int SceneInit () ;
 int SceneUpdate () ;
 TYPE_5__* actors ;
 int gbt_update () ;
 int initrand (int ) ;
 int joy ;
 int joypad () ;
 TYPE_4__ map_next_dir ;
 TYPE_3__ map_next_pos ;
 int prev_joy ;
 int rand_seed ;
 int scene_index ;
 int scene_next_index ;
 scalar_t__ stage_next_type ;
 scalar_t__ stage_type ;
 scalar_t__ time ;
 int wait_vbl_done () ;

void game_loop()
{
  wait_vbl_done();
  LYC_REG = 0x0;

  joy = joypad();


  FadeUpdate();


  if (stage_type != stage_next_type && !IsFading())
  {
    stage_type = stage_next_type;
    scene_index = scene_next_index;

    map_next_pos.x = actors[0].pos.x;
    map_next_pos.y = actors[0].pos.y;
    map_next_dir.x = actors[0].dir.x;
    map_next_dir.y = actors[0].dir.y;

    if (stage_type == SCENE)
    {
      SceneInit();
    }
  }

  if (stage_type == SCENE)
  {
    SceneUpdate();
  }

  prev_joy = joy;
  time++;

  rand_seed += time;
  initrand(rand_seed);

  gbt_update();
}
