
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int KEY_STEP ;
 int key_num ;
 int move_sprite (int,int,int) ;
 int set_sprite_data (int ,int,int ) ;
 int set_sprite_tile (int,int) ;

void init_key()
{
 UBYTE key_x, key_y, i, j;


 set_sprite_data(0, 24, key_num);


 key_y = KEY_STEP + 40;
 for(i = 1;i <= 3;i++){
  key_x = i * KEY_STEP;
  set_sprite_tile(i, i);
  move_sprite(i, key_x, key_y);
 }


 key_y = KEY_STEP * 2 + 40;
 for(i = 4;i <= 6;i++){
  key_x = (i - 3) * KEY_STEP;
  set_sprite_tile(i, i);
  move_sprite(i, key_x, key_y);
 }


 key_y = KEY_STEP * 3 + 40;
  for(i = 7;i <= 9;i++){
   key_x = (i - 6) * KEY_STEP;
   set_sprite_tile(i, i);
   move_sprite(i, key_x, key_y);
  }


 key_x = KEY_STEP * 4;
 for(i = 0;i <= 3;i++){
  key_y = (i+1) * KEY_STEP + 40;
  set_sprite_tile(i+10, i+10);
  move_sprite(i+10, key_x, key_y);
 }


 set_sprite_tile(15, 15);
 move_sprite(15, KEY_STEP * 1, KEY_STEP * 4 + 40);
 set_sprite_tile(0, 0);
 move_sprite(0, KEY_STEP * 2, KEY_STEP * 4 + 40);
 set_sprite_tile(14, 14);
 move_sprite(14, KEY_STEP * 3, KEY_STEP * 4 + 40);


 key_x = KEY_STEP * 5 + 8;
 for(i = 0;i <= 2;i++){
  key_y = (i+1) * KEY_STEP + 40;
  set_sprite_tile(i+16, i+16);
  move_sprite(i+16, key_x, key_y);
 }


 key_x = KEY_STEP * 6 + 8;
 for(i = 0;i <= 2;i++){
  key_y = (i+1) * KEY_STEP + 40;
  set_sprite_tile(i+19, i+19);
  move_sprite(i+19, key_x, key_y);
 }


 key_x = KEY_STEP * 5 + 20;
 key_y = KEY_STEP * 4 + 40;
 set_sprite_tile(22, 22);
 move_sprite(22, key_x, key_y);
}
