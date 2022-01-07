
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct pmaplist {int dummy; } ;
typedef struct pmaplist* rpcblist_ptr ;


 int FALSE ;
 int PMAPFILE ;
 int RPCBFILE ;
 int TRUE ;
 struct pmaplist* list_pml ;
 struct pmaplist* list_rbl ;
 int read_struct (int ,int ,struct pmaplist**) ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_pmaplist_ptr ;
 scalar_t__ xdr_rpcblist_ptr ;

void
read_warmstart(void)
{
 rpcblist_ptr tmp_rpcbl = ((void*)0);



 int ok1, ok2 = TRUE;

 ok1 = read_struct(RPCBFILE, (xdrproc_t)xdr_rpcblist_ptr, &tmp_rpcbl);
 if (ok1 == FALSE)
  return;



 if (ok2 == FALSE) {
  xdr_free((xdrproc_t) xdr_rpcblist_ptr, (char *)&tmp_rpcbl);
  return;
 }
 xdr_free((xdrproc_t) xdr_rpcblist_ptr, (char *)&list_rbl);
 list_rbl = tmp_rpcbl;




}
