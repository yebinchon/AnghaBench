
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UWORD ;
struct TYPE_3__ {size_t bank; scalar_t__ offset; } ;
typedef TYPE_1__ BANK_PTR ;


 int DATA_PTRS_BANK ;
 int ReadBankedBankPtr (int ,TYPE_1__*,int *) ;
 void* ReadBankedUBYTE (size_t,scalar_t__) ;
 int SetBankedBkgTiles (size_t,int ,int ,void*,void*,scalar_t__) ;
 int * background_bank_ptrs ;
 scalar_t__* bank_data_ptrs ;
 size_t image_index ;
 void* scene_height ;
 void* scene_width ;
 void* tileset_index ;

void SceneInit_b6()
{
  BANK_PTR background_bank_ptr;
  UWORD background_ptr;


  ReadBankedBankPtr(DATA_PTRS_BANK, &background_bank_ptr, &background_bank_ptrs[image_index]);
  background_ptr = ((UWORD)bank_data_ptrs[background_bank_ptr.bank]) + background_bank_ptr.offset;
  tileset_index = ReadBankedUBYTE(background_bank_ptr.bank, background_ptr);
  scene_width = ReadBankedUBYTE(background_bank_ptr.bank, background_ptr + 1u);
  scene_height = ReadBankedUBYTE(background_bank_ptr.bank, background_ptr + 2u);
  SetBankedBkgTiles(background_bank_ptr.bank, 0, 0, scene_width, scene_height, background_ptr + 3u);
}
