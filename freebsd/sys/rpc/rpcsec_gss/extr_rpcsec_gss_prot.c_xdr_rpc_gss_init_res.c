
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_gss_init_res {int gr_token; int gr_win; int gr_minor; int gr_major; int gr_handle; } ;
typedef int bool_t ;
typedef int XDR ;


 scalar_t__ xdr_gss_buffer_desc (int *,int *) ;
 scalar_t__ xdr_u_int (int *,int *) ;

bool_t
xdr_rpc_gss_init_res(XDR *xdrs, struct rpc_gss_init_res *p)
{

 return (xdr_gss_buffer_desc(xdrs, &p->gr_handle) &&
     xdr_u_int(xdrs, &p->gr_major) &&
     xdr_u_int(xdrs, &p->gr_minor) &&
     xdr_u_int(xdrs, &p->gr_win) &&
     xdr_gss_buffer_desc(xdrs, &p->gr_token));
}
