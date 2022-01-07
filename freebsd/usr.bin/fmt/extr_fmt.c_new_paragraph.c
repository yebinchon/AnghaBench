
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int output_buffer ;
 scalar_t__ output_buffer_length ;
 scalar_t__ output_in_paragraph ;
 int output_indent (size_t) ;
 scalar_t__ pending_spaces ;
 int wprintf (char*,int,int ) ;
 size_t x ;
 scalar_t__ x0 ;

__attribute__((used)) static void
new_paragraph(size_t old_indent, size_t indent)
{
 if (output_buffer_length) {
  if (old_indent > 0)
   output_indent(old_indent);
  wprintf(L"%.*ls\n", (int)output_buffer_length, output_buffer);
 }
 x = indent;
 x0 = 0;
 output_buffer_length = 0;
 pending_spaces = 0;
 output_in_paragraph = 0;
}
