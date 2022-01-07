
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int UIUpdate_b () ;
 int ui_bank ;

void UIUpdate()
{
  PUSH_BANK(ui_bank);
  UIUpdate_b();
  POP_BANK;
}
