
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pe_directory_entry {scalar_t__ pde_rva; scalar_t__ pde_size; } ;
struct executable {scalar_t__ x_certificate_entry_off; scalar_t__ x_buf; int x_certificate_entry_len; } ;


 int range_check (struct executable const*,scalar_t__,int ,char*) ;
 int warnx (char*,scalar_t__) ;

size_t
signature_size(const struct executable *x)
{
 const struct pe_directory_entry *pde;

 range_check(x, x->x_certificate_entry_off,
     x->x_certificate_entry_len, "Certificate Directory");

 pde = (struct pe_directory_entry *)
     (x->x_buf + x->x_certificate_entry_off);

 if (pde->pde_rva != 0 && pde->pde_size == 0)
  warnx("signature size is 0, but its RVA is %d", pde->pde_rva);
 if (pde->pde_rva == 0 && pde->pde_size != 0)
  warnx("signature RVA is 0, but its size is %d", pde->pde_size);

 return (pde->pde_size);
}
