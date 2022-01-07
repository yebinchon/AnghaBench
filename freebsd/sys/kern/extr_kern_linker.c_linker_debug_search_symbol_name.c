
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ linker_symval_t ;
typedef int caddr_t ;
typedef int c_linker_sym_t ;


 int linker_debug_search_symbol (int ,int *,long*) ;
 int linker_debug_symbol_values (int ,TYPE_1__*) ;
 int strlcpy (char*,int ,int ) ;

__attribute__((used)) static int
linker_debug_search_symbol_name(caddr_t value, char *buf, u_int buflen,
    long *offset)
{
 linker_symval_t symval;
 c_linker_sym_t sym;
 int error;

 *offset = 0;
 error = linker_debug_search_symbol(value, &sym, offset);
 if (error)
  return (error);
 error = linker_debug_symbol_values(sym, &symval);
 if (error)
  return (error);
 strlcpy(buf, symval.name, buflen);
 return (0);
}
