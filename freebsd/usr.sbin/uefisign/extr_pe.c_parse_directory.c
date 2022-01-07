
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pe_directory_entry {int pde_size; scalar_t__ pde_rva; } ;
struct executable {scalar_t__ x_headers_len; int x_certificate_entry_len; scalar_t__ x_buf; scalar_t__ x_certificate_entry_off; } ;
typedef scalar_t__ off_t ;


 int PE_DIRECTORY_ENTRY_CERTIFICATE ;
 int errx (int,char*,...) ;
 int i ;
 void parse_section_table (struct executable*,scalar_t__,int) ;
 int printf (char*,scalar_t__,int) ;
 int range_check (struct executable*,scalar_t__,int,char*) ;

__attribute__((used)) static void
parse_directory(struct executable *x, off_t off,
    int number_of_rva_and_sizes, int number_of_sections)
{

 const struct pe_directory_entry *pde;



 if (number_of_rva_and_sizes <= PE_DIRECTORY_ENTRY_CERTIFICATE) {
  errx(1, "wrong NumberOfRvaAndSizes %d; should be at least %d",
      number_of_rva_and_sizes, PE_DIRECTORY_ENTRY_CERTIFICATE);
 }

 range_check(x, off, sizeof(*pde) * number_of_rva_and_sizes,
     "PE Data Directory");
 if (x->x_headers_len <= off + sizeof(*pde) * number_of_rva_and_sizes)
  errx(1, "PE Data Directory outside of headers");

 x->x_certificate_entry_off =
     off + sizeof(*pde) * PE_DIRECTORY_ENTRY_CERTIFICATE;
 x->x_certificate_entry_len = sizeof(*pde);
 return (parse_section_table(x,
     off + sizeof(*pde) * number_of_rva_and_sizes, number_of_sections));
}
