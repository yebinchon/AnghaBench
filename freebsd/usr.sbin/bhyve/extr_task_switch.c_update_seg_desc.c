
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct seg_desc {int access; int limit; int base; } ;


 int assert (int) ;
 int vm_set_desc (struct vmctx*,int,int,int ,int ,int ) ;

__attribute__((used)) static void
update_seg_desc(struct vmctx *ctx, int vcpu, int reg, struct seg_desc *sd)
{
 int error;

 error = vm_set_desc(ctx, vcpu, reg, sd->base, sd->limit, sd->access);
 assert(error == 0);
}
