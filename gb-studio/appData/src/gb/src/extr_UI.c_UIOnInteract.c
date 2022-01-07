
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ JOY_PRESSED (int ) ;
 int J_A ;
 int J_B ;
 int J_DOWN ;
 int J_LEFT ;
 int J_RIGHT ;
 int J_UP ;
 scalar_t__ MAX (scalar_t__,int ) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int UICloseDialogue () ;
 int UIDrawMenuCursor () ;
 scalar_t__ menu_cancel_on_b ;
 scalar_t__ menu_cancel_on_last_option ;
 scalar_t__ menu_enabled ;
 size_t menu_flag ;
 scalar_t__ menu_index ;
 scalar_t__ menu_layout ;
 scalar_t__ menu_num_options ;
 scalar_t__* script_variables ;
 scalar_t__ text_count ;
 scalar_t__ text_drawn ;

void UIOnInteract()
{
  if (JOY_PRESSED(J_A))
  {
    if (text_drawn && text_count != 0)
    {
      if (menu_enabled)
      {
        if (menu_cancel_on_last_option && menu_index + 1 == menu_num_options)
        {
          script_variables[menu_flag] = 0;
        }
        else
        {
          script_variables[menu_flag] = menu_index + 1;
        }
        UICloseDialogue();
      }
      else
      {
        UICloseDialogue();
      }
    }
  }
  else if (menu_enabled)
  {
    if (JOY_PRESSED(J_UP))
    {
      menu_index = MAX(menu_index - 1, 0);
      UIDrawMenuCursor();
    }
    else if (JOY_PRESSED(J_DOWN))
    {
      menu_index = MIN(menu_index + 1, menu_num_options - 1);
      UIDrawMenuCursor();
    }
    else if (JOY_PRESSED(J_LEFT))
    {
      if(menu_layout == 0) {
        menu_index = MAX(menu_index - 4, 0);
      } else {
        menu_index = 0;
      }
      UIDrawMenuCursor();
    }
    else if (JOY_PRESSED(J_RIGHT))
    {
      if(menu_layout == 0) {
        menu_index = MIN(menu_index + 4, menu_num_options - 1);
      } else {
        menu_index = menu_num_options - 1;
      }
      UIDrawMenuCursor();
    }
    else if (menu_cancel_on_b && JOY_PRESSED(J_B))
    {
      script_variables[menu_flag] = 0;
      UICloseDialogue();
    }
  }
}
