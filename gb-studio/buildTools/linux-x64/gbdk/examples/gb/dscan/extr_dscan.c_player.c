
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
typedef int UBYTE ;


 int DEF_PC0 ;
 int DEF_PC1 ;
 int DEF_PF ;
 int DEF_PY ;
 int DEF_SP ;
 int DIV_REG ;
 int J_DOWN ;
 int J_LEFT ;
 int J_RIGHT ;
 int J_SELECT ;
 int J_START ;
 int J_UP ;
 scalar_t__ MAX_PX ;
 int MAX_TT ;
 scalar_t__ MIN_PX ;
 int delay (int) ;
 int * foreCGB ;
 int hide_msg () ;
 int init_enemy () ;
 int init_kirai () ;
 int init_player () ;
 int init_score () ;
 int init_tama () ;
 int initarand (int) ;
 int joypad () ;
 int k_left ;
 int k_right ;
 int move_sprite (int,scalar_t__,int ) ;
 int pf ;
 int pl ;
 int ps ;
 int pw ;
 scalar_t__ px ;
 int set_sprite_attrb (int,int ) ;
 int set_sprite_tile (int,int) ;
 int show_gover () ;
 int show_level (int) ;
 int show_pause () ;
 int show_score (int) ;
 int* tf ;
 scalar_t__* tx ;
 int * ty ;
 int waitpadup () ;

void player()
{
  UBYTE key;
  UBYTE i;
  UINT16 seed;

  key = joypad();

  if( key & J_START ) {
    if( pf == DEF_PF ) {

      seed = DIV_REG;
      waitpadup();
      seed |= ((UINT16)DIV_REG << 8);
      initarand(seed);
      hide_msg();
      init_score();
      init_player();
      init_tama();
      init_enemy();
      init_kirai();
      delay( 500 );
    } else {
      show_pause();
      waitpadup();
      key = joypad();
      while( !(key & J_START) ) {
        key = joypad();
        if( key & J_DOWN ) {
          if(pl > 0)
            pl--;
          show_level( pl );
          waitpadup();
        } else if( key & J_UP ) {
          if(pl < 8)
            pl++;
          show_level( pl );
          waitpadup();
        } else if( key & J_LEFT ) {
          while( joypad() & J_LEFT ) {
            if(pw > 0)
              pw--;
            show_score( pw );
            delay( 250 );
          }
          show_score( ps );
        } else if( key & J_RIGHT ) {
          while( joypad() & J_RIGHT ) {
            if(pw < 99)
              pw++;
            show_score( pw );
            delay( 250 );
          }
          show_score( ps );
        } else if( key & J_SELECT ) {
          i = k_right;
          k_right = k_left;
          k_left = i;
          waitpadup();
        }
      }
      waitpadup();
      hide_msg();
      delay( 500 );
    }
    return;
  }


  if( pf > 1 ) {
    if( pf < DEF_PF ) {
      set_sprite_tile( 0, pf*2+DEF_PC0 );
      set_sprite_attrb( 0, foreCGB[pf*2+DEF_PC0] );
      set_sprite_tile( 1, pf*2+DEF_PC1 );
      set_sprite_attrb( 1, foreCGB[pf*2+DEF_PC1] );
      pf++;
    } else {
      set_sprite_tile( 0, DEF_SP );
      set_sprite_tile( 1, DEF_SP );
      show_gover();
    }
    return;
  }


  if( (key&J_LEFT)&&(px>MIN_PX) ) {
    px--;
    move_sprite( 0, px, DEF_PY ); move_sprite( 1, px+8, DEF_PY );
  } else if( (key&J_RIGHT)&&(px<MAX_PX) ) {
    px++;
    move_sprite( 0, px, DEF_PY ); move_sprite( 1, px+8, DEF_PY );
  }

  if( key & k_left ) {
    if( pf == 0 ) {
      pf = 1;
      for( i=0; i<MAX_TT; i++ ) {
        if( tf[i] == 0 ) {
          tf[i] = 1; tx[i] = px-4; ty[i] = DEF_PY;
          break;
        }
      }
    }
  } else if( key & k_right ) {
    if( pf == 0 ) {
      pf = 1;
      for( i=0; i<MAX_TT; i++ ) {
        if( tf[i] == 0 ) {
          tf[i] = 1; tx[i] = px+12; ty[i] = DEF_PY;
          break;
        }
      }
    }
  } else if( pf == 1 ) {
    pf = 0;
  }
}
