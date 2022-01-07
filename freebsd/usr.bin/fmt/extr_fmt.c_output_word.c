
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 scalar_t__ coalesce_spaces_P ;
 size_t goal_length ;
 size_t max_length ;
 char const* output_buffer ;
 size_t output_buffer_length ;
 int output_in_paragraph ;
 int output_indent (size_t) ;
 size_t pending_spaces ;
 int putwchar (char) ;
 int sentence_enders ;
 scalar_t__ wcschr (int ,char const) ;
 int wcwidth (char const) ;
 int wmemcpy (char const*,char const*,size_t) ;
 int wmemset (char const*,int,size_t) ;
 int wprintf (char*,int,char const*) ;
 size_t x ;
 size_t x0 ;

__attribute__((used)) static void
output_word(size_t indent0, size_t indent1, const wchar_t *word, size_t length, size_t spaces)
{
 size_t new_x;
 size_t indent = output_in_paragraph ? indent1 : indent0;
 size_t width;
 const wchar_t *p;
 int cwidth;

 for (p = word, width = 0; p < &word[length]; p++)
  width += (cwidth = wcwidth(*p)) > 0 ? cwidth : 1;

 new_x = x + pending_spaces + width;







 if (coalesce_spaces_P || spaces == 0)
  spaces = wcschr(sentence_enders, word[length - 1]) ? 2 : 1;

 if (new_x <= goal_length) {





  wmemset(output_buffer + output_buffer_length, L' ',
      pending_spaces);
  x0 += pending_spaces;
  x += pending_spaces;
  output_buffer_length += pending_spaces;
  wmemcpy(output_buffer + output_buffer_length, word, length);
  x0 += width;
  x += width;
  output_buffer_length += length;
  pending_spaces = spaces;
 } else {
  if (indent > 0)
   output_indent(indent);
  wprintf(L"%.*ls", (int)output_buffer_length, output_buffer);
  if (x0 == 0 || (new_x <= max_length &&
      new_x - goal_length <= goal_length - x)) {
   wprintf(L"%*ls", (int)pending_spaces, L"");
   goto write_out_word;
  } else {




   if (indent + width > max_length) {
    putwchar('\n');
    if (indent > 0)
     output_indent(indent);
  write_out_word:
    wprintf(L"%.*ls", (int)length, word);
    x0 = 0;
    x = indent1;
    pending_spaces = 0;
    output_buffer_length = 0;
   } else {
    wmemcpy(output_buffer, word, length);
    x0 = width;
    x = width + indent1;
    pending_spaces = spaces;
    output_buffer_length = length;
   }
  }
  putwchar('\n');
  output_in_paragraph = 1;
 }
}
