
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_4__ {int Length; } ;
struct TYPE_5__ {int ProximityDomain; scalar_t__ BaseAddress; TYPE_1__ Header; } ;
typedef TYPE_2__ ACPI_DMAR_RHSA ;


 int printf (char*,...) ;

__attribute__((used)) static void
acpi_handle_dmar_rhsa(ACPI_DMAR_RHSA *rhsa)
{

 printf("\n");
 printf("\tType=RHSA\n");
 printf("\tLength=%d\n", rhsa->Header.Length);
 printf("\tBaseAddress=0x%016jx\n", (uintmax_t)rhsa->BaseAddress);
 printf("\tProximityDomain=0x%08x\n", rhsa->ProximityDomain);
}
