
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ApplyPaletteChange (scalar_t__) ;
 int FADE_IN ;
 int TRUE ;
 int fade_direction ;
 scalar_t__ fade_frame ;
 int fade_running ;
 scalar_t__ fade_timer ;

void FadeIn()
{
  fade_frame = 0;
  fade_direction = FADE_IN;
  fade_running = TRUE;
  fade_timer = 0;
  ApplyPaletteChange(fade_timer);
}
