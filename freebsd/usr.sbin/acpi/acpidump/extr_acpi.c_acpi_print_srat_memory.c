
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_3__ {int Flags; int ProximityDomain; scalar_t__ Length; scalar_t__ BaseAddress; } ;
typedef TYPE_1__ ACPI_SRAT_MEM_AFFINITY ;


 int ACPI_SRAT_MEM_ENABLED ;
 int ACPI_SRAT_MEM_HOT_PLUGGABLE ;
 int ACPI_SRAT_MEM_NON_VOLATILE ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_srat_memory(ACPI_SRAT_MEM_AFFINITY *mp)
{

 printf("\tFlags={");
 if (mp->Flags & ACPI_SRAT_MEM_ENABLED)
  printf("ENABLED");
 else
  printf("DISABLED");
 if (mp->Flags & ACPI_SRAT_MEM_HOT_PLUGGABLE)
  printf(",HOT_PLUGGABLE");
 if (mp->Flags & ACPI_SRAT_MEM_NON_VOLATILE)
  printf(",NON_VOLATILE");
 printf("}\n");
 printf("\tBase Address=0x%016jx\n", (uintmax_t)mp->BaseAddress);
 printf("\tLength=0x%016jx\n", (uintmax_t)mp->Length);
 printf("\tProximity Domain=%d\n", mp->ProximityDomain);
}
