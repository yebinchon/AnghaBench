
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UBYTE ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {TYPE_1__ pos; } ;


 scalar_t__ ACTOR_HEIGHT ;
 size_t BUBBLE_ANIMATION_FRAMES ;
 int BUBBLE_SPRITE_LEFT ;
 size_t BUBBLE_TOTAL_FRAMES ;
 scalar_t__ SCX_REG ;
 scalar_t__ SCY_REG ;
 TYPE_2__* actors ;
 size_t emote_actor ;
 scalar_t__* emote_offsets ;
 size_t emote_timer ;
 int move_sprite_pair (int ,scalar_t__,scalar_t__) ;

void SceneRenderEmoteBubble_b()
{
  UBYTE screen_x, screen_y;


  if (emote_timer != 0)
  {

    if (emote_timer != BUBBLE_TOTAL_FRAMES)
    {


      screen_x = actors[emote_actor].pos.x - SCX_REG;
      screen_y = actors[emote_actor].pos.y - ACTOR_HEIGHT - SCY_REG;


      if (emote_timer < BUBBLE_ANIMATION_FRAMES)
      {
        screen_y += emote_offsets[emote_timer];
      }


      move_sprite_pair(BUBBLE_SPRITE_LEFT, screen_x, screen_y);
    }
  }
}
