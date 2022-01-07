
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int caddr_t ;


 int linker_debug_search_symbol_name (int ,char*,int ,long*) ;

int
linker_ddb_search_symbol_name(caddr_t value, char *buf, u_int buflen,
    long *offset)
{

 return (linker_debug_search_symbol_name(value, buf, buflen, offset));
}
