
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct vmctx {int dummy; } ;


 int PAGE_SHIFT ;
 int VM_REG_GUEST_CS ;
 int VM_REG_GUEST_RIP ;
 int assert (int) ;
 int vm_get_desc (struct vmctx*,int,int ,int*,int *,int *) ;
 int vm_set_desc (struct vmctx*,int,int ,int,int ,int ) ;
 int vm_set_register (struct vmctx*,int,int ,int) ;

__attribute__((used)) static void
spinup_ap_realmode(struct vmctx *ctx, int newcpu, uint64_t *rip)
{
 int vector, error;
 uint16_t cs;
 uint64_t desc_base;
 uint32_t desc_limit, desc_access;

 vector = *rip >> PAGE_SHIFT;
 *rip = 0;





 error = vm_set_register(ctx, newcpu, VM_REG_GUEST_RIP, *rip);
 assert(error == 0);

 error = vm_get_desc(ctx, newcpu, VM_REG_GUEST_CS, &desc_base,
       &desc_limit, &desc_access);
 assert(error == 0);

 desc_base = vector << PAGE_SHIFT;
 error = vm_set_desc(ctx, newcpu, VM_REG_GUEST_CS,
       desc_base, desc_limit, desc_access);
 assert(error == 0);

 cs = (vector << PAGE_SHIFT) >> 4;
 error = vm_set_register(ctx, newcpu, VM_REG_GUEST_CS, cs);
 assert(error == 0);
}
