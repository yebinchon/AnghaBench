
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
typedef int * caddr_t ;


 int MODINFO_NAME ;
 int * preload_metadata ;
 int roundup (int,int) ;
 int strcmp (char const*,int *) ;

caddr_t
preload_search_by_name(const char *name)
{
    caddr_t curp;
    uint32_t *hdr;
    int next;

    if (preload_metadata != ((void*)0)) {

 curp = preload_metadata;
 for (;;) {
     hdr = (uint32_t *)curp;
     if (hdr[0] == 0 && hdr[1] == 0)
  break;


     if ((hdr[0] == MODINFO_NAME) &&
  !strcmp(name, curp + sizeof(uint32_t) * 2))
  return(curp);


     next = sizeof(uint32_t) * 2 + hdr[1];
     next = roundup(next, sizeof(u_long));
     curp += next;
 }
    }
    return(((void*)0));
}
