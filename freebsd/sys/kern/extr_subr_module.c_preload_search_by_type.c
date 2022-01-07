
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
typedef int * caddr_t ;


 int MODINFO_NAME ;
 int MODINFO_TYPE ;
 int * preload_metadata ;
 int roundup (int,int) ;
 int strcmp (char const*,int *) ;

caddr_t
preload_search_by_type(const char *type)
{
    caddr_t curp, lname;
    uint32_t *hdr;
    int next;

    if (preload_metadata != ((void*)0)) {

 curp = preload_metadata;
 lname = ((void*)0);
 for (;;) {
     hdr = (uint32_t *)curp;
     if (hdr[0] == 0 && hdr[1] == 0)
  break;


     if (hdr[0] == MODINFO_NAME)
  lname = curp;


     if ((hdr[0] == MODINFO_TYPE) &&
  !strcmp(type, curp + sizeof(uint32_t) * 2))
  return(lname);


     next = sizeof(uint32_t) * 2 + hdr[1];
     next = roundup(next, sizeof(u_long));
     curp += next;
 }
    }
    return(((void*)0));
}
