
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_10__ {int anim_speed; int move_speed; void* enabled; int movement_type; TYPE_2__ dir; TYPE_1__ pos; void* moving; void* redraw; scalar_t__ sprite; } ;
struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {int x; int y; } ;


 int BGP_REG ;
 scalar_t__ CGB_TYPE ;
 int DISPLAY_ON ;
 int FadeInit () ;
 int LCDC_REG ;
 int LCD_IFLAG ;
 scalar_t__ MAXWNDPOSY ;
 int OBP0_REG ;
 int PLAYER_INPUT ;
 int SHOW_SPRITES ;
 int START_PLAYER_ANIM_SPEED ;
 int START_PLAYER_MOVE_SPEED ;
 int START_PLAYER_SPRITE ;
 int START_SCENE_DIR_X ;
 int START_SCENE_DIR_Y ;
 void* START_SCENE_INDEX ;
 int START_SCENE_X ;
 int START_SCENE_Y ;
 int STAT_REG ;
 void* TRUE ;
 int UIInit () ;
 int VBL_IFLAG ;
 scalar_t__ WY_REG ;
 scalar_t__ _cpu ;
 TYPE_5__* actors ;
 int cpu_fast () ;
 int custom_bg_pal ;
 int custom_spr1_pal ;
 int game_loop () ;
 TYPE_4__ map_next_dir ;
 TYPE_3__ map_next_pos ;
 int map_next_sprite ;
 void* scene_index ;
 void* scene_next_index ;
 int set_bkg_palette (int ,int,int ) ;
 int set_interrupts (int) ;
 int set_sprite_palette (int ,int,int ) ;

int main()
{

  LCDC_REG = 0x67;
  set_interrupts(VBL_IFLAG | LCD_IFLAG);
  STAT_REG = 0x45;
  {
    BGP_REG = 0xE4U;
    OBP0_REG = 0xD2U;
  }
  WY_REG = MAXWNDPOSY - 7;
  WY_REG = MAXWNDPOSY + 1;

  actors[0].sprite = 0;
  actors[0].redraw = TRUE;
  actors[0].moving = TRUE;
  map_next_pos.x = actors[0].pos.x = (START_SCENE_X << 3) + 8;
  map_next_pos.y = actors[0].pos.y = (START_SCENE_Y << 3) + 8;
  map_next_dir.x = actors[0].dir.x = START_SCENE_DIR_X;
  map_next_dir.y = actors[0].dir.y = START_SCENE_DIR_Y;
  map_next_sprite = START_PLAYER_SPRITE;
  actors[0].movement_type = PLAYER_INPUT;
  actors[0].enabled = TRUE;
  actors[0].move_speed = START_PLAYER_MOVE_SPEED;
  actors[0].anim_speed = START_PLAYER_ANIM_SPEED;

  scene_index = START_SCENE_INDEX;
  scene_next_index = START_SCENE_INDEX;

  UIInit();
  FadeInit();

  DISPLAY_ON;
  SHOW_SPRITES;

  while (1)
  {
    game_loop();
  }
}
