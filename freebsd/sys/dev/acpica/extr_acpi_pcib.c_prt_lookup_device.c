
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct prt_lookup_request {scalar_t__ pr_slot; scalar_t__ pr_pin; TYPE_1__* pr_entry; } ;
struct TYPE_3__ {scalar_t__ Pin; int Address; } ;
typedef TYPE_1__ ACPI_PCI_ROUTING_TABLE ;


 scalar_t__ ACPI_ADR_PCI_SLOT (int ) ;

__attribute__((used)) static void
prt_lookup_device(ACPI_PCI_ROUTING_TABLE *entry, void *arg)
{
    struct prt_lookup_request *pr;

    pr = (struct prt_lookup_request *)arg;
    if (pr->pr_entry != ((void*)0))
 return;
    if (ACPI_ADR_PCI_SLOT(entry->Address) == pr->pr_slot &&
 entry->Pin == pr->pr_pin)
     pr->pr_entry = entry;
}
