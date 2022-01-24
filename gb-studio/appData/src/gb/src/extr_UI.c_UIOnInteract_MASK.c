#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  J_A ; 
 int /*<<< orphan*/  J_B ; 
 int /*<<< orphan*/  J_DOWN ; 
 int /*<<< orphan*/  J_LEFT ; 
 int /*<<< orphan*/  J_RIGHT ; 
 int /*<<< orphan*/  J_UP ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
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

void FUNC5()
{
  if (FUNC0(J_A))
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
        FUNC3();
      }
      else
      {
        FUNC3();
      }
    }
  }
  else if (menu_enabled)
  {
    if (FUNC0(J_UP))
    {
      menu_index = FUNC1(menu_index - 1, 0);
      FUNC4();
    }
    else if (FUNC0(J_DOWN))
    {
      menu_index = FUNC2(menu_index + 1, menu_num_options - 1);
      FUNC4();
    }
    else if (FUNC0(J_LEFT))
    {
      if(menu_layout == 0) {
        menu_index = FUNC1(menu_index - 4, 0);
      } else {
        menu_index = 0;
      }      
      FUNC4();
    }
    else if (FUNC0(J_RIGHT))
    {
      if(menu_layout == 0) {
        menu_index = FUNC2(menu_index + 4, menu_num_options - 1);
      } else {
        menu_index = menu_num_options - 1;
      }
      FUNC4();
    }
    else if (menu_cancel_on_b && FUNC0(J_B))
    {
      script_variables[menu_flag] = 0;
      FUNC3();
    }
  }
}