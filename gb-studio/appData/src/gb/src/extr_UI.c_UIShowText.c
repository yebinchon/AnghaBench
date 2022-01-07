
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UWORD ;
typedef int UBYTE ;
struct TYPE_3__ {size_t bank; size_t offset; } ;
typedef TYPE_1__ BANK_PTR ;


 int DATA_PTRS_BANK ;
 int FALSE ;
 scalar_t__ MENU_CLOSED_Y ;
 int MENU_LAYOUT_INITIAL_X ;
 int MIN (char,int) ;
 int POP_BANK ;
 int PUSH_BANK (size_t) ;
 int ReadBankedBankPtr (int ,TYPE_1__*,int *) ;
 int UIDrawDialogueFrame (int) ;
 int UIDrawFrame (int ,int ,int,int) ;
 int UIMoveTo (int ,scalar_t__,int ) ;
 int UISetPos (int ,scalar_t__) ;
 scalar_t__* bank_data_ptrs ;
 scalar_t__ menu_layout ;
 int* script_variables ;
 int strcat (char*,size_t) ;
 int strcpy (char*,char*) ;
 int * string_bank_ptrs ;
 scalar_t__ text_count ;
 int text_drawn ;
 int text_in_speed ;
 char* text_lines ;
 int text_num_lines ;
 scalar_t__ text_tile_count ;
 scalar_t__ text_x ;
 scalar_t__ text_y ;
 char* tmp_text_lines ;

void UIShowText(UWORD line)
{
  BANK_PTR bank_ptr;
  UWORD ptr, var_index;
  unsigned char value_string[6];
  UBYTE i, j, k;
  UBYTE value;

  strcpy(tmp_text_lines, "");

  ReadBankedBankPtr(DATA_PTRS_BANK, &bank_ptr, &string_bank_ptrs[line]);
  ptr = ((UWORD)bank_data_ptrs[bank_ptr.bank]) + bank_ptr.offset;

  PUSH_BANK(bank_ptr.bank);
  strcat(tmp_text_lines, ptr);
  POP_BANK;

  for (i = 1, k = 0; i < 81; i++)
  {

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
    UIDrawFrame(0, 0, 8, text_num_lines);
    UISetPos(MENU_LAYOUT_INITIAL_X, MENU_CLOSED_Y);
    UIMoveTo(MENU_LAYOUT_INITIAL_X, MENU_CLOSED_Y - ((text_num_lines + 2) << 3), text_in_speed);
  }
  else
  {
    text_num_lines = MIN(tmp_text_lines[0], 4);
    UIDrawDialogueFrame(text_num_lines);
    UISetPos(0, MENU_CLOSED_Y);
    UIMoveTo(0, MENU_CLOSED_Y - ((text_num_lines + 2) << 3), text_in_speed);
  }
  text_drawn = FALSE;
  text_x = 0;
  text_y = 0;
  text_count = 0;
  text_tile_count = 0;
}
