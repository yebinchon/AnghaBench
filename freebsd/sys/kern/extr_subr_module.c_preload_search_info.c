
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_long ;
typedef int * caddr_t ;


 int roundup (int,int) ;

caddr_t
preload_search_info(caddr_t mod, int inf)
{
    caddr_t curp;
    uint32_t *hdr;
    uint32_t type = 0;
    int next;

    if (mod == ((void*)0))
     return (((void*)0));

    curp = mod;
    for (;;) {
 hdr = (uint32_t *)curp;

 if (hdr[0] == 0 && hdr[1] == 0)
     break;




 if (type == 0) {
     type = hdr[0];
 } else {
     if (hdr[0] == type)
  break;
 }






 if (hdr[0] == inf)
     return(curp + (sizeof(uint32_t) * 2));


 next = sizeof(uint32_t) * 2 + hdr[1];
 next = roundup(next, sizeof(u_long));
 curp += next;
    }
    return(((void*)0));
}
