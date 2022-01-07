
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {int flags; scalar_t__ softc; } ;


 int DF_EXTERNALSOFTC ;

void
device_claim_softc(device_t dev)
{
 if (dev->softc)
  dev->flags |= DF_EXTERNALSOFTC;
 else
  dev->flags &= ~DF_EXTERNALSOFTC;
}
