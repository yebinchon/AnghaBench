
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct rw_mem_args {int val; int size; int operation; } ;
struct mem_range {int (* handler ) (struct vmctx*,int,int ,int ,int ,int ,int ,int ) ;int arg2; int arg1; } ;


 int stub1 (struct vmctx*,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
rw_mem_cb(struct vmctx *ctx, int vcpu, uint64_t paddr, struct mem_range *mr,
    void *arg)
{
 struct rw_mem_args *rma;

 rma = arg;
 return (mr->handler(ctx, vcpu, rma->operation, paddr, rma->size,
     rma->val, mr->arg1, mr->arg2));
}
