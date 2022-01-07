
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int UIDrawFrame_b (int ,int ,int ,int ) ;
 int ui_bank ;

void UIDrawFrame(UBYTE x, UBYTE y, UBYTE width, UBYTE height)
{
  PUSH_BANK(ui_bank);
  UIDrawFrame_b(x, y, width, height);
  POP_BANK;
}
