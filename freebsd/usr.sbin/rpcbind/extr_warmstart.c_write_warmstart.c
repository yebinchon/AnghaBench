
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;


 int PMAPFILE ;
 int RPCBFILE ;
 int list_pml ;
 int list_rbl ;
 int write_struct (int ,int ,int *) ;
 scalar_t__ xdr_pmaplist_ptr ;
 scalar_t__ xdr_rpcblist_ptr ;

void
write_warmstart(void)
{
 (void) write_struct(RPCBFILE, (xdrproc_t)xdr_rpcblist_ptr, &list_rbl);




}
