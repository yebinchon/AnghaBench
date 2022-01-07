
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* ifp; scalar_t__ timeout; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_7__ {TYPE_1__* sys; } ;
typedef TYPE_2__ cp_chan_t ;
struct TYPE_8__ {int if_drv_flags; } ;


 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int cp_start (TYPE_1__*) ;
 int if_inc_counter (TYPE_3__*,int ,int) ;

__attribute__((used)) static void cp_transmit (cp_chan_t *c, void *attachment, int len)
{
 drv_t *d = c->sys;

 d->timeout = 0;

 if_inc_counter(d->ifp, IFCOUNTER_OPACKETS, 1);
 d->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 cp_start (d);
}
