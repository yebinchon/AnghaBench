
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int8_t ;
struct TYPE_2__ {int ph_length; } ;
struct PIR_table {TYPE_1__ pt_header; } ;
struct PIR_header {int dummy; } ;
struct PIR_entry {int dummy; } ;


 scalar_t__ BIOS_PADDRTOVADDR (scalar_t__) ;
 scalar_t__ bios_sigsearch (int ,char*,int,int,int ) ;
 int pci_route_count ;
 struct PIR_table* pci_route_table ;

void
pci_pir_open(void)
{
 struct PIR_table *pt;
 uint32_t sigaddr;
 int i;
 uint8_t ck, *cv;


 if (pci_route_table != ((void*)0))
  return;


 sigaddr = bios_sigsearch(0, "$PIR", 4, 16, 0);
 if (sigaddr == 0)
  sigaddr = bios_sigsearch(0, "_PIR", 4, 16, 0);
 if (sigaddr == 0)
  return;



 pt = (struct PIR_table *)(uintptr_t)BIOS_PADDRTOVADDR(sigaddr);
 if (pt->pt_header.ph_length <= sizeof(struct PIR_header))
  return;
 for (cv = (u_int8_t *)pt, ck = 0, i = 0;
      i < (pt->pt_header.ph_length); i++)
  ck += cv[i];
 if (ck != 0)
  return;


 pci_route_table = pt;
 pci_route_count = (pt->pt_header.ph_length -
     sizeof(struct PIR_header)) /
     sizeof(struct PIR_entry);
}
