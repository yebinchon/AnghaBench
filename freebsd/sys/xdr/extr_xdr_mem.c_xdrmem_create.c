
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int int32_t ;
typedef enum xdr_op { ____Placeholder_xdr_op } xdr_op ;
struct TYPE_3__ {int x_op; char* x_private; char* x_base; int x_handy; int * x_ops; } ;
typedef TYPE_1__ XDR ;


 int xdrmem_ops_aligned ;
 int xdrmem_ops_unaligned ;

void
xdrmem_create(XDR *xdrs, char *addr, u_int size, enum xdr_op op)
{

 xdrs->x_op = op;
 xdrs->x_ops = ((unsigned long)addr & (sizeof(int32_t) - 1))
     ? &xdrmem_ops_unaligned : &xdrmem_ops_aligned;
 xdrs->x_private = xdrs->x_base = addr;
 xdrs->x_handy = size;
}
