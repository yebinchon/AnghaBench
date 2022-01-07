
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Flags; } ;
struct TYPE_5__ {int Residency; int Latency; scalar_t__ CounterFrequency; int ResidencyCounter; TYPE_1__ Header; int EntryTrigger; } ;
typedef TYPE_2__ ACPI_LPIT_NATIVE ;


 int ACPI_LPIT_NO_COUNTER ;
 int acpi_print_gas (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_native_lpit(ACPI_LPIT_NATIVE *nl)
{
 printf("\tEntryTrigger=");
 acpi_print_gas(&nl->EntryTrigger);
 printf("\tResidency=%u\n", nl->Residency);
 printf("\tLatency=%u\n", nl->Latency);
 if (nl->Header.Flags & ACPI_LPIT_NO_COUNTER)
  printf("\tResidencyCounter=Not Present");
 else {
  printf("\tResidencyCounter=");
  acpi_print_gas(&nl->ResidencyCounter);
 }
 if (nl->CounterFrequency)
  printf("\tCounterFrequency=%ju\n", nl->CounterFrequency);
 else
  printf("\tCounterFrequency=TSC\n");
}
