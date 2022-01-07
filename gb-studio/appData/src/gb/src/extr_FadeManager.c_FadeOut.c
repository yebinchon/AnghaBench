
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ApplyPaletteChange (int) ;
 int FADE_OUT ;
 int TRUE ;
 int fade_direction ;
 scalar_t__ fade_frame ;
 int fade_running ;
 int fade_timer ;

void FadeOut()
{
  fade_frame = 0;
  fade_direction = FADE_OUT;
  fade_running = TRUE;
  fade_timer = 5;
  ApplyPaletteChange(fade_timer);
}
