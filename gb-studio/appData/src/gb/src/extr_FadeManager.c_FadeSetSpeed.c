
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int fade_frames_per_step ;
 int * fade_speeds ;

void FadeSetSpeed(UBYTE speed)
{
  fade_frames_per_step = fade_speeds[speed];
}
