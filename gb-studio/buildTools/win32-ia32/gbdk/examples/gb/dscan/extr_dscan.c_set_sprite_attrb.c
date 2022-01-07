
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ CGB_TYPE ;
 scalar_t__ _cpu ;
 int set_sprite_prop (int ,int ) ;

void set_sprite_attrb( UBYTE nb, UBYTE tile )
{
  if( _cpu==CGB_TYPE ) {
    set_sprite_prop( nb, tile );
  }
}
