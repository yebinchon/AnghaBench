
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IntiFlags; int Lint; int Uid; } ;
typedef TYPE_1__ ACPI_MADT_LOCAL_X2APIC_NMI ;


 int madt_handle_local_nmi (int ,int ,int ) ;

__attribute__((used)) static void
madt_parse_local_x2apic_nmi(ACPI_MADT_LOCAL_X2APIC_NMI *nmi)
{

 madt_handle_local_nmi(nmi->Uid, nmi->Lint, nmi->IntiFlags);
}
