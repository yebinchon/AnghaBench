
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int cursor_data ;
 int set_sprite_data (int,int,int ) ;
 int set_sprite_tile (int,int) ;

void init_cursor()
{
 UBYTE i;


 set_sprite_data(23, 8, cursor_data);

 for(i = 23;i <= 30;i++){
  set_sprite_tile(i, i);
 }
}
