
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int MENU_CANCEL_ON_B_PRESSED ;
 int MENU_CANCEL_ON_LAST_OPTION ;
 int UIShowMenu (int ,int ,int ,int) ;

void UIShowChoice(UWORD flag_index, UWORD line)
{
  UIShowMenu(flag_index, line, 0, MENU_CANCEL_ON_B_PRESSED | MENU_CANCEL_ON_LAST_OPTION);
}
