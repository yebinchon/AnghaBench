
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {char* desc; scalar_t__ class; int subclass; int report; } ;


 int M_DEVBUF ;
 scalar_t__ bootverbose ;
 int device_get_ivars (int ) ;
 int device_printf (int ,char*,char const*,...) ;
 int free (char*,int ) ;
 int pci_cfg_save (int ,int ,int) ;
 char* pci_describe_device (int ) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_get_subclass (int ) ;
 TYPE_1__* pci_nomatch_tab ;
 int printf (char*,int,int) ;

void
pci_probe_nomatch(device_t dev, device_t child)
{
 int i, report;
 const char *cp, *scp;
 char *device;




 report = 1;
 if ((device = pci_describe_device(child)) != ((void*)0)) {
  device_printf(dev, "<%s>", device);
  free(device, M_DEVBUF);
 } else {




  cp = "unknown";
  scp = ((void*)0);
  for (i = 0; pci_nomatch_tab[i].desc != ((void*)0); i++) {
   if (pci_nomatch_tab[i].class == pci_get_class(child)) {
    if (pci_nomatch_tab[i].subclass == -1) {
     cp = pci_nomatch_tab[i].desc;
     report = pci_nomatch_tab[i].report;
    } else if (pci_nomatch_tab[i].subclass ==
        pci_get_subclass(child)) {
     scp = pci_nomatch_tab[i].desc;
     report = pci_nomatch_tab[i].report;
    }
   }
  }
  if (report || bootverbose) {
   device_printf(dev, "<%s%s%s>",
       cp ? cp : "",
       ((cp != ((void*)0)) && (scp != ((void*)0))) ? ", " : "",
       scp ? scp : "");
  }
 }
 if (report || bootverbose) {
  printf(" at device %d.%d (no driver attached)\n",
      pci_get_slot(child), pci_get_function(child));
 }
 pci_cfg_save(child, device_get_ivars(child), 1);
}
