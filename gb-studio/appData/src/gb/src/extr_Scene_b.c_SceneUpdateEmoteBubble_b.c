
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUBBLE_SPRITE_LEFT ;
 scalar_t__ BUBBLE_TOTAL_FRAMES ;
 scalar_t__ emote_timer ;
 int hide_sprite_pair (int ) ;

void SceneUpdateEmoteBubble_b()
{

  if (emote_timer != 0)
  {

    if (emote_timer == BUBBLE_TOTAL_FRAMES)
    {

      emote_timer = 0;


      hide_sprite_pair(BUBBLE_SPRITE_LEFT);
    }
    else
    {

      emote_timer++;
    }
  }
}
