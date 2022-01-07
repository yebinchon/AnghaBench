
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct cdev {struct cardbus_devinfo* si_drv1; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ buffer; } ;
struct cardbus_devinfo {TYPE_1__ sc_cis; } ;


 int MIN (int ,scalar_t__) ;
 int uiomove (scalar_t__,int ,struct uio*) ;

__attribute__((used)) static int
cardbus_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct cardbus_devinfo *devi;

 devi = dev->si_drv1;

 if (uio->uio_offset >= devi->sc_cis.len)
  return (0);
 return (uiomove(devi->sc_cis.buffer + uio->uio_offset,
   MIN(uio->uio_resid, devi->sc_cis.len - uio->uio_offset), uio));
}
