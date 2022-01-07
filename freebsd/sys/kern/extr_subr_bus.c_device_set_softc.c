
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {int flags; void* softc; } ;


 int DF_EXTERNALSOFTC ;
 int M_BUS_SC ;
 int free_domain (void*,int ) ;

void
device_set_softc(device_t dev, void *softc)
{
 if (dev->softc && !(dev->flags & DF_EXTERNALSOFTC))
  free_domain(dev->softc, M_BUS_SC);
 dev->softc = softc;
 if (dev->softc)
  dev->flags |= DF_EXTERNALSOFTC;
 else
  dev->flags &= ~DF_EXTERNALSOFTC;
}
