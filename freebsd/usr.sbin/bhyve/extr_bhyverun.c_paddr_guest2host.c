
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;


 void* vm_map_gpa (struct vmctx*,uintptr_t,size_t) ;

void *
paddr_guest2host(struct vmctx *ctx, uintptr_t gaddr, size_t len)
{

 return (vm_map_gpa(ctx, gaddr, len));
}
