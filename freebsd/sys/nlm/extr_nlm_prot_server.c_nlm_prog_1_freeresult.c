
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int caddr_t ;
typedef int SVCXPRT ;


 int TRUE ;
 int xdr_free (int ,int ) ;

int
nlm_prog_1_freeresult(SVCXPRT *transp, xdrproc_t xdr_result, caddr_t result)
{

 (void) xdr_free(xdr_result, result);
 return (TRUE);
}
