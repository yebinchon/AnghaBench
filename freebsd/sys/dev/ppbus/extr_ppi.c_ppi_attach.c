
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppi_data {int ppi_device; TYPE_1__* ppi_cdev; int ppi_lock; scalar_t__ intr_resource; int intr_cookie; } ;
typedef int device_t ;
struct TYPE_2__ {struct ppi_data* si_drv1; } ;


 struct ppi_data* DEVTOSOFTC (int ) ;
 int ENXIO ;
 int GID_WHEEL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int UID_ROOT ;
 scalar_t__ bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,scalar_t__) ;
 int bus_setup_intr (int ,scalar_t__,int,int *,int ,int ,int *) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int ppi_cdevsw ;
 int ppiintr ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
ppi_attach(device_t dev)
{
 struct ppi_data *ppi = DEVTOSOFTC(dev);
 sx_init(&ppi->ppi_lock, "ppi");
 ppi->ppi_cdev = make_dev(&ppi_cdevsw, device_get_unit(dev),
   UID_ROOT, GID_WHEEL,
   0600, "ppi%d", device_get_unit(dev));
 if (ppi->ppi_cdev == ((void*)0)) {
  device_printf(dev, "Failed to create character device\n");
  return (ENXIO);
 }
 ppi->ppi_cdev->si_drv1 = ppi;
 ppi->ppi_device = dev;

 return (0);
}
