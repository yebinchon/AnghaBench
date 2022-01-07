
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int UIDrawDialogueFrame_b (int ) ;
 int ui_bank ;

void UIDrawDialogueFrame(UBYTE h)
{
  PUSH_BANK(ui_bank);
  UIDrawDialogueFrame_b(h);
  POP_BANK;
}
