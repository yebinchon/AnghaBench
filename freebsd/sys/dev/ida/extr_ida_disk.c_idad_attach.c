
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct idad_softc {intptr_t drive; int secsize; int secperunit; TYPE_2__* disk; int unit; int heads; int sectors; int cylinders; struct ida_softc* controller; int dev; } ;
struct ida_softc {int lock; } ;
struct TYPE_4__ {int nsectors; int nheads; int ncylinders; } ;
struct ida_drive_info {int secsize; int secperunit; TYPE_1__ dp; } ;
typedef int off_t ;
typedef int dinfo ;
typedef int device_t ;
struct TYPE_5__ {char* d_name; int d_sectorsize; int d_mediasize; int d_unit; int d_maxsize; struct idad_softc* d_drv1; int d_fwheads; int d_fwsectors; int d_dump; int d_strategy; } ;


 int CMD_GET_LOG_DRV_INFO ;
 int DFLTPHYS ;
 int DISK_VERSION ;
 int DMA_DATA_IN ;
 int ENXIO ;
 scalar_t__ device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_2__* disk_alloc () ;
 int disk_create (TYPE_2__*,int ) ;
 int ida_command (struct ida_softc*,int ,struct ida_drive_info*,int,intptr_t,int ,int ) ;
 int idad_dump ;
 int idad_strategy ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
idad_attach(device_t dev)
{
 struct ida_drive_info dinfo;
 struct idad_softc *drv;
 device_t parent;
 int error;

 drv = (struct idad_softc *)device_get_softc(dev);
 parent = device_get_parent(dev);
 drv->dev = dev;
 drv->controller = (struct ida_softc *)device_get_softc(parent);
 drv->unit = device_get_unit(dev);
 drv->drive = (intptr_t)device_get_ivars(dev);

 mtx_lock(&drv->controller->lock);
 error = ida_command(drv->controller, CMD_GET_LOG_DRV_INFO,
     &dinfo, sizeof(dinfo), drv->drive, 0, DMA_DATA_IN);
 mtx_unlock(&drv->controller->lock);
 if (error) {
  device_printf(dev, "CMD_GET_LOG_DRV_INFO failed\n");
  return (ENXIO);
 }

 drv->cylinders = dinfo.dp.ncylinders;
 drv->heads = dinfo.dp.nheads;
 drv->sectors = dinfo.dp.nsectors;
 drv->secsize = dinfo.secsize == 0 ? 512 : dinfo.secsize;
 drv->secperunit = dinfo.secperunit;




 device_printf(dev, "%uMB (%u sectors), blocksize=%d\n",
     drv->secperunit / ((1024 * 1024) / drv->secsize),
     drv->secperunit, drv->secsize);

 drv->disk = disk_alloc();
 drv->disk->d_strategy = idad_strategy;
 drv->disk->d_name = "idad";
 drv->disk->d_dump = idad_dump;
 drv->disk->d_sectorsize = drv->secsize;
 drv->disk->d_mediasize = (off_t)drv->secperunit * drv->secsize;
 drv->disk->d_fwsectors = drv->sectors;
 drv->disk->d_fwheads = drv->heads;
 drv->disk->d_drv1 = drv;
 drv->disk->d_maxsize = DFLTPHYS;
 drv->disk->d_unit = drv->unit;
 disk_create(drv->disk, DISK_VERSION);

 return (0);
}
