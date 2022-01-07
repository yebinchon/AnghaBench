
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct mem_range {int dummy; } ;
struct emulate_mem_args {int paging; int vie; } ;


 int mem_read ;
 int mem_write ;
 int vmm_emulate_instruction (struct vmctx*,int,int ,int ,int ,int ,int ,struct mem_range*) ;

__attribute__((used)) static int
emulate_mem_cb(struct vmctx *ctx, int vcpu, uint64_t paddr, struct mem_range *mr,
    void *arg)
{
 struct emulate_mem_args *ema;

 ema = arg;
 return (vmm_emulate_instruction(ctx, vcpu, paddr, ema->vie, ema->paging,
     mem_read, mem_write, mr));
}
