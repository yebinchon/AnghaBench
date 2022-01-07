
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vmctx {int dummy; } ;
struct vm_guest_paging {int dummy; } ;
struct user_segment_descriptor {int dummy; } ;


 int desc_table_rw (struct vmctx*,int,struct vm_guest_paging*,int ,struct user_segment_descriptor*,int,int*) ;

__attribute__((used)) static int
desc_table_write(struct vmctx *ctx, int vcpu, struct vm_guest_paging *paging,
    uint16_t sel, struct user_segment_descriptor *desc, int *faultptr)
{
 return (desc_table_rw(ctx, vcpu, paging, sel, desc, 0, faultptr));
}
