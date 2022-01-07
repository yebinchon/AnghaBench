
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linker_file_t ;
typedef int caddr_t ;


 int kld_sx ;
 int linker_file_lookup_symbol_internal (int ,char const*,int) ;
 int sx_xlock (int *) ;
 int sx_xlocked (int *) ;
 int sx_xunlock (int *) ;

caddr_t
linker_file_lookup_symbol(linker_file_t file, const char *name, int deps)
{
 caddr_t sym;
 int locked;

 locked = sx_xlocked(&kld_sx);
 if (!locked)
  sx_xlock(&kld_sx);
 sym = linker_file_lookup_symbol_internal(file, name, deps);
 if (!locked)
  sx_xunlock(&kld_sx);
 return (sym);
}
