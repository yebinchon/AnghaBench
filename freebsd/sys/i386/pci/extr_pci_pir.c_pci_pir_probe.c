
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pt_entry; } ;
struct TYPE_3__ {int pe_bus; } ;


 int pci_route_count ;
 TYPE_2__* pci_route_table ;
 int pir_parsed ;

int
pci_pir_probe(int bus, int require_parse)
{
 int i;

 if (pci_route_table == ((void*)0) || (require_parse && !pir_parsed))
  return (0);
 for (i = 0; i < pci_route_count; i++)
  if (pci_route_table->pt_entry[i].pe_bus == bus)
   return (1);
 return (0);
}
