
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* xdrproc_t ) (TYPE_1__*,void*) ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;
typedef int CLIENT ;


 int XDR_FREE ;
 int stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static bool_t
clnt_vc_freeres(CLIENT *cl, xdrproc_t xdr_res, void *res_ptr)
{
 XDR xdrs;
 bool_t dummy;

 xdrs.x_op = XDR_FREE;
 dummy = (*xdr_res)(&xdrs, res_ptr);

 return (dummy);
}
