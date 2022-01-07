
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct rw_mem_args {int size; int operation; int * val; } ;


 int MEM_F_WRITE ;
 int access_memory (struct vmctx*,int,int ,int ,struct rw_mem_args*) ;
 int rw_mem_cb ;

int
write_mem(struct vmctx *ctx, int vcpu, uint64_t gpa, uint64_t wval, int size)
{
 struct rw_mem_args rma;

 rma.val = &wval;
 rma.size = size;
 rma.operation = MEM_F_WRITE;
 return (access_memory(ctx, vcpu, gpa, rw_mem_cb, &rma));
}
