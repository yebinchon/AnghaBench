
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ n_type; scalar_t__ n_value; char* n_name; } ;


 int kd ;
 int kvm_geterr (int ) ;
 scalar_t__ kvm_read (int ,scalar_t__,void*,size_t) ;
 TYPE_1__* namelist ;
 int xo_errx (int,char*,char const*,...) ;

__attribute__((used)) static void
kreado(int nlx, void *addr, size_t size, size_t offset)
{
 const char *sym;

 if (namelist[nlx].n_type == 0 || namelist[nlx].n_value == 0) {
  sym = namelist[nlx].n_name;
  if (*sym == '_')
   ++sym;
  xo_errx(1, "symbol %s not defined", sym);
 }
 if ((size_t)kvm_read(kd, namelist[nlx].n_value + offset, addr,
     size) != size) {
  sym = namelist[nlx].n_name;
  if (*sym == '_')
   ++sym;
  xo_errx(1, "%s: %s", sym, kvm_geterr(kd));
 }
}
