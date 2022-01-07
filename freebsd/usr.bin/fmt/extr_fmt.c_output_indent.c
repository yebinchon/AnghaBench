
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t output_tab_width ;
 int putwchar (char) ;

__attribute__((used)) static void
output_indent(size_t n_spaces)
{
 if (output_tab_width) {
  while (n_spaces >= output_tab_width) {
   putwchar('\t');
   n_spaces -= output_tab_width;
  }
 }
 while (n_spaces-- > 0)
  putwchar(' ');
}
