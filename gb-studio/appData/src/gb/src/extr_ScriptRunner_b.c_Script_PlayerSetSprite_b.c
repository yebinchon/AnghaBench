
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UWORD ;
typedef size_t UBYTE ;
struct TYPE_5__ {int frames_len; int sprite_type; scalar_t__ frame; scalar_t__ sprite; } ;
struct TYPE_4__ {size_t bank; scalar_t__ offset; } ;
typedef TYPE_1__ BANK_PTR ;


 int DATA_PTRS_BANK ;
 size_t MUL_4 (size_t) ;
 int ReadBankedBankPtr (int ,TYPE_1__*,int *) ;
 size_t ReadBankedUBYTE (size_t,scalar_t__) ;
 int SPRITE_ACTOR ;
 int SPRITE_ACTOR_ANIMATED ;
 int SPRITE_STATIC ;
 int SceneRenderActor (int ) ;
 int SetBankedSpriteData (size_t,int ,size_t,scalar_t__) ;
 int TRUE ;
 TYPE_2__* actors ;
 scalar_t__* bank_data_ptrs ;
 size_t map_next_sprite ;
 size_t* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 int * sprite_bank_ptrs ;

void Script_PlayerSetSprite_b()
{
  BANK_PTR sprite_bank_ptr;
  UWORD sprite_ptr;
  UBYTE sprite_index, sprite_frames, sprite_len;


  sprite_index = script_cmd_args[0];
  ReadBankedBankPtr(DATA_PTRS_BANK, &sprite_bank_ptr, &sprite_bank_ptrs[sprite_index]);
  sprite_ptr = ((UWORD)bank_data_ptrs[sprite_bank_ptr.bank]) + sprite_bank_ptr.offset;
  sprite_frames = ReadBankedUBYTE(sprite_bank_ptr.bank, sprite_ptr);
  sprite_len = MUL_4(sprite_frames);
  SetBankedSpriteData(sprite_bank_ptr.bank, 0, sprite_len, sprite_ptr + 1);
  actors[0].sprite = 0;
  actors[0].frame = 0;
  actors[0].sprite_type = sprite_frames == 6 ? SPRITE_ACTOR_ANIMATED : sprite_frames == 3 ? SPRITE_ACTOR : SPRITE_STATIC;
  actors[0].frames_len = sprite_frames == 6 ? 2 : sprite_frames == 3 ? 1 : sprite_frames;
  SceneRenderActor(0);


  map_next_sprite = sprite_index;

  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
