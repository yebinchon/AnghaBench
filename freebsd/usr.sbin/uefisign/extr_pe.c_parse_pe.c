
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coff_number_of_sections; } ;
struct pe_header {scalar_t__ pe_signature; TYPE_1__ pe_coff; } ;
struct executable {scalar_t__ x_buf; } ;
typedef scalar_t__ off_t ;


 scalar_t__ PE_SIGNATURE ;
 int errx (int,char*,scalar_t__) ;
 int parse_optional (struct executable*,scalar_t__,int ) ;
 int range_check (struct executable*,scalar_t__,int,char*) ;

__attribute__((used)) static void
parse_pe(struct executable *x, off_t off)
{
 const struct pe_header *pe;



 range_check(x, off, sizeof(*pe), "PE header");

 pe = (struct pe_header *)(x->x_buf + off);
 if (pe->pe_signature != PE_SIGNATURE)
  errx(1, "wrong PE signature 0x%x", pe->pe_signature);



 parse_optional(x, off + sizeof(*pe),
     pe->pe_coff.coff_number_of_sections);
}
