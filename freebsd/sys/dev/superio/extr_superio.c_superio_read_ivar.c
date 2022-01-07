
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superio_devinfo {uintptr_t ldn; uintptr_t type; uintptr_t iobase; uintptr_t iobase2; uintptr_t irq; uintptr_t dma; } ;
typedef int device_t ;


 int ENOENT ;






 struct superio_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
superio_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct superio_devinfo *dinfo;

 dinfo = device_get_ivars(child);
 switch (which) {
 case 129:
  *result = dinfo->ldn;
  break;
 case 128:
  *result = dinfo->type;
  break;
 case 132:
  *result = dinfo->iobase;
  break;
 case 131:
  *result = dinfo->iobase2;
  break;
 case 130:
  *result = dinfo->irq;
  break;
 case 133:
  *result = dinfo->dma;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
