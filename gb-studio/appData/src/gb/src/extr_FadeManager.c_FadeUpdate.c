
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ApplyPaletteChange (int) ;
 scalar_t__ FADE_IN ;
 scalar_t__ FALSE ;
 scalar_t__ fade_direction ;
 int fade_frame ;
 int fade_frames_per_step ;
 scalar_t__ fade_running ;
 int fade_timer ;

void FadeUpdate()
{
  if (fade_running)
  {
    if ((fade_frame & fade_frames_per_step) == 0)
    {
      if (fade_direction == FADE_IN)
      {
        fade_timer++;
        if (fade_timer == 5)
        {
          fade_running = FALSE;
        }
      }
      else
      {
        fade_timer--;
        if (fade_timer == 0)
        {
          fade_running = FALSE;
        }
      }
    }

    ApplyPaletteChange(fade_timer);
    fade_frame++;
  }
}
