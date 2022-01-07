
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pe_section_header {scalar_t__ psh_pointer_to_raw_data; int psh_size_of_raw_data; } ;
struct executable {scalar_t__ x_headers_len; scalar_t__ x_buf; int x_nsections; int* x_section_off; int* x_section_len; } ;
typedef scalar_t__ off_t ;


 int MAX_SECTIONS ;
 int errx (int,char*,...) ;
 int printf (char*,int,scalar_t__,int) ;
 int range_check (struct executable*,scalar_t__,int,char*) ;

__attribute__((used)) static void
parse_section_table(struct executable *x, off_t off, int number_of_sections)
{
 const struct pe_section_header *psh;
 int i;

 range_check(x, off, sizeof(*psh) * number_of_sections,
     "section table");

 if (x->x_headers_len <= off + sizeof(*psh) * number_of_sections)
  errx(1, "section table outside of headers");

 psh = (const struct pe_section_header *)(x->x_buf + off);

 if (number_of_sections >= MAX_SECTIONS) {
  errx(1, "too many sections: got %d, should be %d",
      number_of_sections, MAX_SECTIONS);
 }
 x->x_nsections = number_of_sections;

 for (i = 0; i < number_of_sections; i++) {
  if (psh->psh_pointer_to_raw_data < x->x_headers_len)
   errx(1, "section points inside the headers");

  range_check(x, psh->psh_pointer_to_raw_data,
      psh->psh_size_of_raw_data, "section");




  x->x_section_off[i] = psh->psh_pointer_to_raw_data;
  x->x_section_len[i] = psh->psh_size_of_raw_data;
  psh++;
 }
}
