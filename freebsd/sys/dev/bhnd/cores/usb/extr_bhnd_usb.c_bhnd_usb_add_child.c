
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_usb_softc {scalar_t__ sc_maddr; } ;
struct bhnd_usb_devinfo {int sdi_irq_mapped; int sdi_msize; int sdi_rl; scalar_t__ sdi_irq; scalar_t__ sdi_maddr; } ;
typedef int * device_t ;


 int BHND_ERROR_DEV (int *,char*,char const*,...) ;
 int BHND_INFO_DEV (int *,char*,char const*,scalar_t__,scalar_t__) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bhnd_map_intr (int *,int ,scalar_t__*) ;
 int bhnd_unmap_intr (int *,scalar_t__) ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 struct bhnd_usb_softc* device_get_softc (int *) ;
 int device_set_ivars (int *,struct bhnd_usb_devinfo*) ;
 int free (struct bhnd_usb_devinfo*,int ) ;
 struct bhnd_usb_devinfo* malloc (int,int ,int) ;
 int panic (char*) ;
 int resource_list_add (int *,int ,int ,scalar_t__,scalar_t__,int) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static device_t
bhnd_usb_add_child(device_t dev, u_int order, const char *name, int unit)
{
 struct bhnd_usb_softc *sc;
 struct bhnd_usb_devinfo *sdi;
 device_t child;
 int error;

 sc = device_get_softc(dev);

 sdi = malloc(sizeof(struct bhnd_usb_devinfo), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (sdi == ((void*)0))
  return (((void*)0));

 resource_list_init(&sdi->sdi_rl);
 sdi->sdi_irq_mapped = 0;

 if (strncmp(name, "ohci", 4) == 0)
 {
  sdi->sdi_maddr = sc->sc_maddr + 0x000;
  sdi->sdi_msize = 0x200;
 }
 else if (strncmp(name, "ehci", 4) == 0)
 {
  sdi->sdi_maddr = sc->sc_maddr + 0x000;
  sdi->sdi_msize = 0x1000;
 }
 else
 {
  panic("Unknown subdevice");
 }


 if ((error = bhnd_map_intr(dev, 0, &sdi->sdi_irq))) {
  BHND_ERROR_DEV(dev, "could not map %s interrupt: %d", name,
      error);
  goto failed;
 }
 sdi->sdi_irq_mapped = 1;

 BHND_INFO_DEV(dev, "%s: irq=%ju maddr=0x%jx", name, sdi->sdi_irq,
     sdi->sdi_maddr);




 resource_list_add(&sdi->sdi_rl, SYS_RES_MEMORY, 0, sdi->sdi_maddr,
     sdi->sdi_maddr + sdi->sdi_msize - 1, sdi->sdi_msize);

 resource_list_add(&sdi->sdi_rl, SYS_RES_IRQ, 0, sdi->sdi_irq,
     sdi->sdi_irq, 1);

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0)) {
  BHND_ERROR_DEV(dev, "could not add %s", name);
  goto failed;
 }

 device_set_ivars(child, sdi);
 return (child);

failed:
 if (sdi->sdi_irq_mapped)
  bhnd_unmap_intr(dev, sdi->sdi_irq);

 resource_list_free(&sdi->sdi_rl);

 free(sdi, M_DEVBUF);
 return (((void*)0));
}
