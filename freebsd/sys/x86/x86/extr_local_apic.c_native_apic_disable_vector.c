
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int GSEL_APIC ;
 int IDTVEC (int ) ;
 int IDT_DTRACE_RET ;
 int IDT_SYSCALL ;
 int KASSERT (int,char*) ;
 int SDT_APIC ;
 int SEL_KPL ;
 int ** ioint_handlers ;
 scalar_t__ pti ;
 int rsvd ;
 int rsvd_pti ;
 int setidt (int,int *,int ,int ,int ) ;

__attribute__((used)) static void
native_apic_disable_vector(u_int apic_id, u_int vector)
{

 KASSERT(vector != IDT_SYSCALL, ("Attempt to overwrite syscall entry"));




 KASSERT(ioint_handlers[vector / 32] != ((void*)0),
     ("No ISR handler for vector %u", vector));
}
