
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UWORD ;
typedef int UBYTE ;
struct TYPE_3__ {size_t bank; scalar_t__ offset; } ;
typedef TYPE_1__ BANK_PTR ;


 int DATA_PTRS_BANK ;
 int ReadBankedBankPtr (int ,TYPE_1__*,int *) ;
 int ReadBankedUBYTE (size_t,scalar_t__) ;
 int SetBankedBkgData (size_t,int ,int ,scalar_t__) ;
 scalar_t__* bank_data_ptrs ;
 int * tileset_bank_ptrs ;
 size_t tileset_index ;

void SceneInit_b7()
{
  BANK_PTR tileset_bank_ptr;
  UWORD tileset_ptr;
  UBYTE tileset_size;

  ReadBankedBankPtr(DATA_PTRS_BANK, &tileset_bank_ptr, &tileset_bank_ptrs[tileset_index]);
  tileset_ptr = ((UWORD)bank_data_ptrs[tileset_bank_ptr.bank]) + tileset_bank_ptr.offset;
  tileset_size = ReadBankedUBYTE(tileset_bank_ptr.bank, tileset_ptr);
  SetBankedBkgData(tileset_bank_ptr.bank, 0, tileset_size, tileset_ptr + 1u);
}
