
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {size_t r_hdrlen; int r_flags; int la_flags; int * r_linkdata; int * ll_addr; } ;
struct ifnet {int dummy; } ;


 int LLE_VALID ;
 int RLLE_VALID ;
 int memcpy (int *,char const*,size_t) ;

void
lltable_set_entry_addr(struct ifnet *ifp, struct llentry *lle,
    const char *linkhdr, size_t linkhdrsize, int lladdr_off)
{

 memcpy(lle->r_linkdata, linkhdr, linkhdrsize);
 lle->r_hdrlen = linkhdrsize;
 lle->ll_addr = &lle->r_linkdata[lladdr_off];
 lle->la_flags |= LLE_VALID;
 lle->r_flags |= RLLE_VALID;
}
