
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct idad_softc {TYPE_1__* controller; int drive; } ;
struct disk {struct idad_softc* d_drv1; } ;
typedef int off_t ;
struct TYPE_2__ {int flags; } ;


 int CMD_WRITE ;
 int DEV_BSIZE ;
 int DMA_DATA_OUT ;
 int ENXIO ;
 int IDA_INTERRUPTS ;
 int ida_command (TYPE_1__*,int ,void*,size_t,int ,int,int ) ;

__attribute__((used)) static int
idad_dump(void *arg, void *virtual, vm_offset_t physical, off_t offset, size_t length)
{

 struct idad_softc *drv;
 int error = 0;
 struct disk *dp;

 dp = arg;
 drv = dp->d_drv1;
 if (drv == ((void*)0))
  return (ENXIO);

 drv->controller->flags &= ~IDA_INTERRUPTS;

 if (length > 0) {
  error = ida_command(drv->controller, CMD_WRITE, virtual,
      length, drv->drive, offset / DEV_BSIZE, DMA_DATA_OUT);
 }
 drv->controller->flags |= IDA_INTERRUPTS;
 return (error);
}
