
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_device {scalar_t__ id_order; scalar_t__ id_vendorid; int id_configs; int id_config_arg; int (* id_config_cb ) (int ,struct isa_config*,int ) ;} ;
struct isa_config {int dummy; } ;
typedef struct isa_config device_t ;


 struct isa_device* DEVTOISA (struct isa_config) ;
 scalar_t__ ISA_ORDER_PNPBIOS ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 scalar_t__ bootverbose ;
 int bus_enumerate_hinted_children (struct isa_config) ;
 int bus_generic_probe (struct isa_config) ;
 int bzero (struct isa_config*,int) ;
 scalar_t__ device_get_children (struct isa_config,struct isa_config**,int*) ;
 scalar_t__ device_is_attached (struct isa_config) ;
 int device_printf (struct isa_config,char*) ;
 int device_probe_and_attach (struct isa_config) ;
 int free (struct isa_config*,int ) ;
 scalar_t__ isa_assign_resources (struct isa_config) ;
 int isa_claim_resources (struct isa_config,struct isa_config) ;
 int isa_running ;
 int kern_ident ;
 struct isa_config* malloc (int,int ,int) ;
 int printf (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ,struct isa_config*,int ) ;

void
isa_probe_children(device_t dev)
{
 struct isa_device *idev;
 device_t *children, child;
 struct isa_config *cfg;
 int nchildren, i, err;





 bus_generic_probe(dev);

 if (device_get_children(dev, &children, &nchildren))
  return;





 if (bootverbose)
  printf("isa_probe_children: disabling PnP devices\n");

 cfg = malloc(sizeof(*cfg), M_TEMP, M_NOWAIT|M_ZERO);
 if (cfg == ((void*)0)) {
  free(children, M_TEMP);
  return;
 }

 for (i = 0; i < nchildren; i++) {
  idev = DEVTOISA(children[i]);

  bzero(cfg, sizeof(*cfg));
  if (idev->id_config_cb)
   idev->id_config_cb(idev->id_config_arg, cfg, 0);
 }

 free(cfg, M_TEMP);





 for (i = 0; i < nchildren; i++) {
  child = children[i];
  idev = DEVTOISA(child);

  if (idev->id_order > ISA_ORDER_PNPBIOS)
   continue;
  if (!TAILQ_EMPTY(&idev->id_configs) &&
      !isa_assign_resources(child))
   continue;

  if (device_probe_and_attach(child) == 0)
   isa_claim_resources(dev, child);
 }
 free(children, M_TEMP);





 bus_enumerate_hinted_children(dev);
 if (device_get_children(dev, &children, &nchildren))
  return;
 if (bootverbose)
  printf("isa_probe_children: probing non-PnP devices\n");
 for (i = 0; i < nchildren; i++) {
  child = children[i];
  idev = DEVTOISA(child);

  if (device_is_attached(child) ||
      !TAILQ_EMPTY(&idev->id_configs))
   continue;

  err = device_probe_and_attach(child);
  if (err == 0 && idev->id_vendorid == 0 &&
      strcmp(kern_ident, "GENERIC") == 0 &&
      device_is_attached(child))
   device_printf(child,
       "non-PNP ISA device will be removed from GENERIC in FreeBSD 12.\n");
 }




 if (bootverbose)
  printf("isa_probe_children: probing PnP devices\n");
 for (i = 0; i < nchildren; i++) {
  child = children[i];
  idev = DEVTOISA(child);

  if (device_is_attached(child) || TAILQ_EMPTY(&idev->id_configs))
   continue;

  if (isa_assign_resources(child)) {
   device_probe_and_attach(child);
   isa_claim_resources(dev, child);
  }
 }

 free(children, M_TEMP);

 isa_running = 1;
}
