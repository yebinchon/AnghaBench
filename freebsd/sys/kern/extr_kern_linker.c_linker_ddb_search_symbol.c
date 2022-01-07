
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;
typedef int c_linker_sym_t ;


 int linker_debug_search_symbol (int ,int *,long*) ;

int
linker_ddb_search_symbol(caddr_t value, c_linker_sym_t *sym, long *diffp)
{

 return (linker_debug_search_symbol(value, sym, diffp));
}
