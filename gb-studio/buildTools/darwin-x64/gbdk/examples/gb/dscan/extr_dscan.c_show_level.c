
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int set_bkg_tiles (int,int ,int,int,unsigned char*) ;
 int set_level (int) ;

void show_level( UBYTE i )
{
  unsigned char level[2];

  if( i < 9 ) {
    level[0] = 0x31+i;
  } else {
    level[0] = 0x41+i-9;
  }
  set_bkg_tiles( 19, 0, 1, 1, level );
  set_level( i );
}
