
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int ctx ;
 int vm_set_desc (int ,int,int,int ,int ,int ) ;

__attribute__((used)) static int
cb_vm_set_desc(void *arg, int vcpu, int reg, uint64_t base, u_int limit,
    u_int access)
{

 return (vm_set_desc(ctx, vcpu, reg, base, limit, access));
}
