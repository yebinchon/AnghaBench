
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_ident {scalar_t__ vendor; scalar_t__ device; int flags; } ;
typedef int device_t ;


 int AMR_CFG_SIG ;
 int AMR_ID_PROBE_SIG ;
 int AMR_SIGNATURE_1 ;
 int AMR_SIGNATURE_2 ;
 struct amr_ident* amr_device_ids ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static struct amr_ident *
amr_find_ident(device_t dev)
{
    struct amr_ident *id;
    int sig;

    for (id = amr_device_ids; id->vendor != 0; id++) {
 if ((pci_get_vendor(dev) == id->vendor) &&
     (pci_get_device(dev) == id->device)) {


     if (id->flags & AMR_ID_PROBE_SIG) {
  sig = pci_read_config(dev, AMR_CFG_SIG, 2);
  if ((sig != AMR_SIGNATURE_1) && (sig != AMR_SIGNATURE_2))
      continue;
     }
     return (id);
 }
    }
    return (((void*)0));
}
