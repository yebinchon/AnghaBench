
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* ifp; int timeout; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_8__ {TYPE_1__* sys; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_9__ {int if_drv_flags; } ;



 int CT_DEBUG (TYPE_1__*,char*) ;




 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int ct_start (TYPE_1__*) ;
 int if_inc_counter (TYPE_3__*,int ,int) ;

__attribute__((used)) static void ct_error (ct_chan_t *c, int data)
{
 drv_t *d = c->sys;

 if (!d)
  return;

 switch (data) {
 case 131:
  CT_DEBUG (d, ("frame error\n"));

  if_inc_counter(d->ifp, IFCOUNTER_IERRORS, 1);

  break;
 case 132:
  CT_DEBUG (d, ("crc error\n"));

  if_inc_counter(d->ifp, IFCOUNTER_IERRORS, 1);

  break;
 case 129:
  CT_DEBUG (d, ("overrun error\n"));

  if_inc_counter(d->ifp, IFCOUNTER_COLLISIONS, 1);
  if_inc_counter(d->ifp, IFCOUNTER_IERRORS, 1);

  break;
 case 130:
  CT_DEBUG (d, ("overflow error\n"));

  if_inc_counter(d->ifp, IFCOUNTER_IERRORS, 1);

  break;
 case 128:
  CT_DEBUG (d, ("underrun error\n"));
  d->timeout = 0;

  if_inc_counter(d->ifp, IFCOUNTER_OERRORS, 1);
  d->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  ct_start (d);
  break;
 default:
  CT_DEBUG (d, ("error #%d\n", data));
 }
}
