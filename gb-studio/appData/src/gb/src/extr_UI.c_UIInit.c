
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int UIInit_b () ;
 int ui_bank ;

void UIInit()
{
  PUSH_BANK(ui_bank);
  UIInit_b();
  POP_BANK;
}
