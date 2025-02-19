
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_4__ {int Length; } ;
struct TYPE_5__ {int Segment; TYPE_1__ Header; scalar_t__ EndAddress; scalar_t__ BaseAddress; } ;
typedef TYPE_2__ ACPI_DMAR_RESERVED_MEMORY ;


 int acpi_handle_dmar_devscope (char*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_handle_dmar_rmrr(ACPI_DMAR_RESERVED_MEMORY *rmrr)
{
 char *cp;
 int remaining, consumed;

 printf("\n");
 printf("\tType=RMRR\n");
 printf("\tLength=%d\n", rmrr->Header.Length);
 printf("\tSegment=%d\n", rmrr->Segment);
 printf("\tBaseAddress=0x%016jx\n", (uintmax_t)rmrr->BaseAddress);
 printf("\tLimitAddress=0x%016jx\n", (uintmax_t)rmrr->EndAddress);

 remaining = rmrr->Header.Length - sizeof(ACPI_DMAR_RESERVED_MEMORY);
 if (remaining > 0)
  printf("\tDevice Scope:");
 while (remaining > 0) {
  cp = (char *)rmrr + rmrr->Header.Length - remaining;
  consumed = acpi_handle_dmar_devscope(cp, remaining);
  if (consumed <= 0)
   break;
  else
   remaining -= consumed;
 }
}
