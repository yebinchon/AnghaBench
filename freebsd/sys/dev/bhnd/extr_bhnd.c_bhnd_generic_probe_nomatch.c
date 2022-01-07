
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct bhnd_nomatch {scalar_t__ device; scalar_t__ vendor; scalar_t__ if_verbose; } ;
typedef int device_t ;


 scalar_t__ BHND_COREID_INVALID ;
 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bhnd_get_core_index (int ) ;
 scalar_t__ bhnd_get_device (int ) ;
 int bhnd_get_device_name (int ) ;
 int bhnd_get_hwrev (int ) ;
 scalar_t__ bhnd_get_vendor (int ) ;
 int bhnd_get_vendor_name (int ) ;
 struct bhnd_nomatch* bhnd_nomatch_table ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,int ,int ) ;
 int printf (char*,int) ;
 int resource_list_print_type (struct resource_list*,char*,int ,char*) ;

void
bhnd_generic_probe_nomatch(device_t dev, device_t child)
{
 struct resource_list *rl;
 const struct bhnd_nomatch *nm;
 bool report;


 report = 1;
 for (nm = bhnd_nomatch_table; nm->device != BHND_COREID_INVALID; nm++) {
  if (nm->vendor != bhnd_get_vendor(child))
   continue;

  if (nm->device != bhnd_get_device(child))
   continue;

  report = 0;
  if (bootverbose && nm->if_verbose)
   report = 1;
  break;
 }

 if (!report)
  return;


 device_printf(dev, "<%s %s, rev %hhu>", bhnd_get_vendor_name(child),
  bhnd_get_device_name(child), bhnd_get_hwrev(child));

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (rl != ((void*)0)) {
  resource_list_print_type(rl, "mem", SYS_RES_MEMORY, "%#jx");
  resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%#jd");
 }

 printf(" at core %u (no driver attached)\n",
     bhnd_get_core_index(child));
}
