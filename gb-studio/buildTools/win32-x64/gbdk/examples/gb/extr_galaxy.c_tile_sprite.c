
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int * earth_tiles ;
 int set_sprite_tile (int,int ) ;
 int sframe ;

void tile_sprite()
{
  UBYTE s;

  s = sframe<<1;
  set_sprite_tile(0, earth_tiles[s]);
  set_sprite_tile(1, earth_tiles[s+1]);
}
