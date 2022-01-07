
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int DEF_TC ;
 scalar_t__ DEF_TS ;
 scalar_t__ DEF_TX ;
 scalar_t__ DEF_TY ;
 size_t volatile MAX_TT ;
 scalar_t__ MAX_TY ;
 int * foreCGB ;
 int move_sprite (scalar_t__,scalar_t__,scalar_t__) ;
 int set_sprite_attrb (scalar_t__,int ) ;
 int set_sprite_tile (scalar_t__,int) ;
 int* tf ;
 scalar_t__* tx ;
 scalar_t__* ty ;

void bombs()
{
   volatile UBYTE i;

   for( i=0; i<MAX_TT; i++ ) {
    if( tf[i] != 0 ) {
      ty[i]++;
      if( ty[i] > MAX_TY ) {
        tf[i] = 0; tx[i] = i*4+DEF_TX; ty[i] = DEF_TY;
      } else {
        tf[i] = 3-tf[i];
      }
      set_sprite_tile( i+DEF_TS, tf[i]+DEF_TC );
      set_sprite_attrb( i+DEF_TS, foreCGB[tf[i]+DEF_TC] );
      move_sprite( i+DEF_TS, tx[i], ty[i] );
    }
  }
}
