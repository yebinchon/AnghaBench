#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UWORD ;
typedef  int UBYTE ;
struct TYPE_3__ {size_t bank; size_t offset; } ;
typedef  TYPE_1__ BANK_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_PTRS_BANK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MENU_CLOSED_Y ; 
 int /*<<< orphan*/  MENU_LAYOUT_INITIAL_X ; 
 int FUNC0 (char,int) ; 
 int /*<<< orphan*/  POP_BANK ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* bank_data_ptrs ; 
 scalar_t__ menu_layout ; 
 int* script_variables ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/ * string_bank_ptrs ; 
 scalar_t__ text_count ; 
 int /*<<< orphan*/  text_drawn ; 
 int /*<<< orphan*/  text_in_speed ; 
 char* text_lines ; 
 int text_num_lines ; 
 scalar_t__ text_tile_count ; 
 scalar_t__ text_x ; 
 scalar_t__ text_y ; 
 char* tmp_text_lines ; 

void FUNC9(UWORD line)
{
  BANK_PTR bank_ptr;
  UWORD ptr, var_index;
  unsigned char value_string[6];
  UBYTE i, j, k;
  UBYTE value;

  FUNC8(tmp_text_lines, "");

  FUNC2(DATA_PTRS_BANK, &bank_ptr, &string_bank_ptrs[line]);
  ptr = ((UWORD)bank_data_ptrs[bank_ptr.bank]) + bank_ptr.offset;

  FUNC1(bank_ptr.bank);
  FUNC7(tmp_text_lines, ptr);
  POP_BANK;

  for (i = 1, k = 0; i < 81; i++)
  {
    // Replace variable references in text
    if (tmp_text_lines[i] == '$')
    {
      if(tmp_text_lines[i + 3] == '$') {
        var_index = (10 * (tmp_text_lines[i + 1] - '0')) + (tmp_text_lines[i + 2] - '0');
      } else if(tmp_text_lines[i + 4] == '$') {
        var_index = (100 * (tmp_text_lines[i + 1] - '0')) + (10 * (tmp_text_lines[i + 2] - '0')) + (tmp_text_lines[i + 3] - '0');
      } else {
        text_lines[k] = tmp_text_lines[i];
        ++k;
        continue;
      }

      value = script_variables[var_index];
      j = 0;

      if (value == 0)
      {
        text_lines[k] = '0';
      }
      else
      {
        // itoa implementation
        while (value != 0)
        {
          value_string[j++] = '0' + (value % 10);
          value /= 10;
        }
        j--;
        while (j != 255)
        {
          text_lines[k] = value_string[j];
          k++;
          j--;
        }
        k--;
      }
      // Jump though input past variable placeholder
      if(var_index >= 100) {
        i += 4;
      } else {
        i += 3;
      }
    }
    else
    {
      text_lines[k] = tmp_text_lines[i];
    }
    ++k;
  }

  if (menu_layout)
  {
    text_num_lines = tmp_text_lines[0];
    FUNC4(0, 0, 8, text_num_lines);
    FUNC6(MENU_LAYOUT_INITIAL_X, MENU_CLOSED_Y);
    FUNC5(MENU_LAYOUT_INITIAL_X, MENU_CLOSED_Y - ((text_num_lines + 2) << 3), text_in_speed);
  }
  else 
  {
    text_num_lines = FUNC0(tmp_text_lines[0], 4);
    FUNC3(text_num_lines);
    FUNC6(0, MENU_CLOSED_Y);
    FUNC5(0, MENU_CLOSED_Y - ((text_num_lines + 2) << 3), text_in_speed);
  }
  text_drawn = FALSE;
  text_x = 0;
  text_y = 0;
  text_count = 0;
  text_tile_count = 0;
}