
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int GSEL_APIC ;
 int IDT_DTRACE_RET ;
 int IDT_SYSCALL ;
 int KASSERT (int,char*) ;
 int SDT_APIC ;
 int SEL_KPL ;
 int ** ioint_handlers ;
 int ** ioint_pti_handlers ;
 scalar_t__ pti ;
 int setidt (int,int *,int ,int ,int ) ;

__attribute__((used)) static void
native_apic_enable_vector(u_int apic_id, u_int vector)
{

 KASSERT(vector != IDT_SYSCALL, ("Attempt to overwrite syscall entry"));
 KASSERT(ioint_handlers[vector / 32] != ((void*)0),
     ("No ISR handler for vector %u", vector));




 setidt(vector, (pti ? ioint_pti_handlers : ioint_handlers)[vector / 32],
     SDT_APIC, SEL_KPL, GSEL_APIC);
}
