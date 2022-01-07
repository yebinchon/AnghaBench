
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;


 size_t CURSOR_BANK ;
 scalar_t__ CURSOR_BANK_OFFSET ;
 size_t FRAME_BANK ;
 scalar_t__ FRAME_BANK_OFFSET ;
 int SetBankedBkgData (size_t,int,int,scalar_t__) ;
 int UISetPos (int,int) ;
 scalar_t__* bank_data_ptrs ;
 int set_bkg_data (int,int,int ) ;
 int ui_black ;
 int ui_white ;

void UIInit_b()
{
  UWORD ptr;

  UISetPos(160, 144);


  ptr = ((UWORD)bank_data_ptrs[FRAME_BANK]) + FRAME_BANK_OFFSET;
  SetBankedBkgData(FRAME_BANK, 192, 9, ptr);

  set_bkg_data(0xC9, 1, ui_white);
  set_bkg_data(0xCA, 1, ui_black);

  ptr = ((UWORD)bank_data_ptrs[CURSOR_BANK]) + CURSOR_BANK_OFFSET;
  SetBankedBkgData(FRAME_BANK, 0xCB, 1, ptr);
}
