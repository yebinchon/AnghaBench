
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct ifnet {int if_drv_flags; int if_flags; TYPE_2__* if_softc; } ;
struct TYPE_8__ {TYPE_1__* chan; int * bd; } ;
typedef TYPE_2__ drv_t ;
typedef int caddr_t ;
typedef int bdrv_t ;
struct TYPE_7__ {scalar_t__ debug_shadow; scalar_t__ debug; } ;


 int CT_DEBUG2 (TYPE_2__*,char*) ;
 int CT_LOCK (int *) ;
 int CT_UNLOCK (int *) ;
 int IFF_DEBUG ;
 int IFF_DRV_RUNNING ;




 int ct_down (TYPE_2__*) ;
 int ct_start (TYPE_2__*) ;
 int ct_up (TYPE_2__*) ;
 int splimp () ;
 int splx (int) ;
 int sppp_ioctl (struct ifnet*,int,int ) ;

__attribute__((used)) static int ct_sioctl (struct ifnet *ifp, u_long cmd, caddr_t data)
{
 drv_t *d = ifp->if_softc;
 bdrv_t *bd = d->bd;
 int error, s, was_up, should_be_up;

 was_up = (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
 error = sppp_ioctl (ifp, cmd, data);
 if (error)
  return error;

 if (! (ifp->if_flags & IFF_DEBUG))
  d->chan->debug = 0;
 else
  d->chan->debug = d->chan->debug_shadow;

 switch (cmd) {
 default: CT_DEBUG2 (d, ("ioctl 0x%lx\n", cmd)); return 0;
 case 131: CT_DEBUG2 (d, ("SIOCADDMULTI\n")); return 0;
 case 130: CT_DEBUG2 (d, ("SIOCDELMULTI\n")); return 0;
 case 128: CT_DEBUG2 (d, ("SIOCSIFFLAGS\n")); break;
 case 129: CT_DEBUG2 (d, ("SIOCSIFADDR\n")); break;
 }


 s = splimp ();
 CT_LOCK (bd);
 should_be_up = (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
 if (! was_up && should_be_up) {

  ct_up (d);
  ct_start (d);
 } else if (was_up && ! should_be_up) {


  ct_down (d);
 }
 CT_UNLOCK (bd);
 splx (s);
 return 0;
}
