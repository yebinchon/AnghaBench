
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int caddr_t ;


 int M_WAITOK ;
 int linker_search_symbol_name_flags (int ,char*,int ,long*,int ) ;

int
linker_search_symbol_name(caddr_t value, char *buf, u_int buflen,
    long *offset)
{

 return (linker_search_symbol_name_flags(value, buf, buflen, offset,
     M_WAITOK));
}
