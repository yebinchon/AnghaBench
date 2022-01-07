
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NBSFRAMES ;
 scalar_t__ sframe ;
 int tile_sprite () ;
 int time ;

void animate_sprite()
{
  if((time&0x07) == 0) {
    sframe++;
    if(sframe == NBSFRAMES)
      sframe = 0;
    tile_sprite();
  }
}
