
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct vm_guest_paging {int dummy; } ;
struct vie {int dummy; } ;
struct emulate_mem_args {struct vm_guest_paging* paging; struct vie* vie; } ;


 int access_memory (struct vmctx*,int,int ,int ,struct emulate_mem_args*) ;
 int emulate_mem_cb ;

int
emulate_mem(struct vmctx *ctx, int vcpu, uint64_t paddr, struct vie *vie,
    struct vm_guest_paging *paging)

{
 struct emulate_mem_args ema;

 ema.vie = vie;
 ema.paging = paging;
 return (access_memory(ctx, vcpu, paddr, emulate_mem_cb, &ema));
}
