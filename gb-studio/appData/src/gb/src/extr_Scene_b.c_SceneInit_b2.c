
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t UWORD ;
typedef size_t UBYTE ;
struct TYPE_12__ {int bank; int offset; } ;
struct TYPE_11__ {int x; int y; } ;
struct TYPE_15__ {void* y; void* x; } ;
struct TYPE_18__ {int sprite; int sprite_type; int frames_len; int animate; int frame; int move_speed; int anim_speed; int movement_type; TYPE_2__ events_ptr; TYPE_1__ dir; TYPE_5__ pos; void* flip; scalar_t__ frame_offset; void* moving; int enabled; } ;
struct TYPE_14__ {int bank; int offset; } ;
struct TYPE_13__ {int x; int y; } ;
struct TYPE_17__ {int w; int h; TYPE_4__ events_ptr; TYPE_3__ pos; } ;
struct TYPE_16__ {size_t bank; size_t offset; } ;
typedef TYPE_6__ BANK_PTR ;


 int DATA_PTRS_BANK ;
 void* FALSE ;
 size_t MUL_4 (int) ;
 void* MUL_8 (int) ;
 int ReadBankedBankPtr (int ,TYPE_6__*,int *) ;
 int ReadBankedUBYTE (size_t,size_t) ;
 int ReadBankedUWORD (size_t,size_t) ;
 int SetBankedSpriteData (size_t,size_t,size_t,size_t) ;
 int TRUE ;
 TYPE_9__* actors ;
 scalar_t__* bank_data_ptrs ;
 TYPE_6__ bank_ptr ;
 size_t col_bank ;
 int collision_tiles_len ;
 int image_index ;
 int * scene_bank_ptrs ;
 size_t scene_index ;
 size_t scene_load_col_ptr ;
 size_t scene_num_actors ;
 size_t scene_num_triggers ;
 int * sprite_bank_ptrs ;
 TYPE_7__* triggers ;

void SceneInit_b2()
{
  BANK_PTR sprite_bank_ptr;
  UWORD sprite_ptr, sprite_index;
  UBYTE num_sprites, k, i, j;
  UBYTE sprite_len;
  UWORD scene_load_ptr;

  ReadBankedBankPtr(DATA_PTRS_BANK, &bank_ptr, &scene_bank_ptrs[scene_index]);
  scene_load_ptr = ((UWORD)bank_data_ptrs[bank_ptr.bank]) + bank_ptr.offset;
  image_index = ReadBankedUWORD(bank_ptr.bank, scene_load_ptr);
  num_sprites = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 2);


  k = 24;
  scene_load_ptr = scene_load_ptr + 3;
  for (i = 0; i != num_sprites; i++)
  {

    sprite_index = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + i);

    ReadBankedBankPtr(DATA_PTRS_BANK, &sprite_bank_ptr, &sprite_bank_ptrs[sprite_index]);
    sprite_ptr = ((UWORD)bank_data_ptrs[sprite_bank_ptr.bank]) + sprite_bank_ptr.offset;
    sprite_len = MUL_4(ReadBankedUBYTE(sprite_bank_ptr.bank, sprite_ptr));

    SetBankedSpriteData(sprite_bank_ptr.bank, k, sprite_len, sprite_ptr + 1);
    k += sprite_len;
  }
  scene_load_ptr = scene_load_ptr + num_sprites;


  scene_num_actors = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr) + 1;
  scene_load_ptr = scene_load_ptr + 1;

  for (i = 1; i != scene_num_actors; i++)
  {

    actors[i].sprite = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr);

    actors[i].enabled = TRUE;
    actors[i].moving = FALSE;
    actors[i].sprite_type = FALSE;
    actors[i].sprite_type = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 1);
    actors[i].frames_len = 0;
    actors[i].frames_len = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 2);
    actors[i].animate = FALSE;
    actors[i].frame_offset = 0;
    actors[i].flip = FALSE;
    actors[i].animate = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 3) & 1;
    actors[i].frame = 0;
    actors[i].frame = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 3) >> 1;
    actors[i].move_speed = 0;
    actors[i].anim_speed = 0;

    actors[i].pos.x = MUL_8(ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 4)) + 8;
    actors[i].pos.y = MUL_8(ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 5)) + 8;
    j = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 6);
    actors[i].dir.x = j == 2 ? -1 : j == 4 ? 1 : 0;
    actors[i].dir.y = j == 8 ? -1 : j == 1 ? 1 : 0;

    actors[i].movement_type = 0;
    actors[i].movement_type = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 7);

    actors[i].move_speed = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 8);
    actors[i].anim_speed = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 9);


    actors[i].events_ptr.bank = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 10);
    actors[i].events_ptr.offset = (ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 11) * 256) + ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr + 12);


    scene_load_ptr = scene_load_ptr + 13u;
  }


  scene_num_triggers = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr);
  scene_load_ptr = scene_load_ptr + 1;

  for (i = 0; i != scene_num_triggers; i++)
  {
    triggers[i].pos.x = ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_ptr);
    triggers[i].pos.y = ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_ptr + 1);
    triggers[i].w = 0;
    triggers[i].w = ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_ptr + 2);
    triggers[i].h = 0;
    triggers[i].h = ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_ptr + 3);

    triggers[i].events_ptr.bank = ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_ptr + 5);
    triggers[i].events_ptr.offset = (ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_ptr + 6) * 256) + ReadBankedUBYTE(bank_ptr.bank, (UWORD)scene_load_ptr + 7);
    scene_load_ptr = scene_load_ptr + 8u;
  }


  collision_tiles_len = ReadBankedUBYTE(bank_ptr.bank, scene_load_ptr);
  scene_load_col_ptr = scene_load_ptr + 1;
  col_bank = bank_ptr.bank;
}
