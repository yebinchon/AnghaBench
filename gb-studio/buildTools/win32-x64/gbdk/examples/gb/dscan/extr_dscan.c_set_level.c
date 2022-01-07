
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int rnd_enemy ;
 int rnd_kirai ;

void set_level( UBYTE i )
{

  if( i < 9 ) {
    rnd_enemy = 100-(i*12);
    rnd_kirai = 50-(i*6);
  } else {
    rnd_enemy = 0;
    rnd_kirai = 0;
  }
}
