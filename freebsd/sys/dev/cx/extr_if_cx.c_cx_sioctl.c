
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
struct ifnet {int if_drv_flags; int if_flags; TYPE_3__* if_softc; } ;
struct TYPE_10__ {TYPE_2__* chan; TYPE_1__* board; } ;
typedef TYPE_3__ drv_t ;
typedef int caddr_t ;
typedef int bdrv_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ mode; scalar_t__ debug_shadow; scalar_t__ debug; } ;
struct TYPE_8__ {int * sys; } ;


 int CX_DEBUG2 (TYPE_3__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int EBUSY ;
 int IFF_DEBUG ;
 int IFF_DRV_RUNNING ;
 scalar_t__ M_ASYNC ;




 scalar_t__ T_NONE ;
 int cx_down (TYPE_3__*) ;
 int cx_start (TYPE_3__*) ;
 int cx_up (TYPE_3__*) ;
 int splhigh () ;
 int splx (int) ;
 int sppp_ioctl (struct ifnet*,int,int ) ;

__attribute__((used)) static int cx_sioctl (struct ifnet *ifp, u_long cmd, caddr_t data)
{
 drv_t *d = ifp->if_softc;
 bdrv_t *bd = d->board->sys;
 int error, s, was_up, should_be_up;


 if (d->chan->type == T_NONE || d->chan->mode == M_ASYNC)
  return EBUSY;


 was_up = (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
 error = sppp_ioctl (ifp, cmd, data);
 if (error)
  return error;

 s = splhigh ();
 CX_LOCK (bd);
 if (! (ifp->if_flags & IFF_DEBUG))
  d->chan->debug = 0;
 else
  d->chan->debug = d->chan->debug_shadow;
 CX_UNLOCK (bd);
 splx (s);

 switch (cmd) {
 default: CX_DEBUG2 (d, ("ioctl 0x%lx\n", cmd)); return 0;
 case 131: CX_DEBUG2 (d, ("SIOCADDMULTI\n")); return 0;
 case 130: CX_DEBUG2 (d, ("SIOCDELMULTI\n")); return 0;
 case 128: CX_DEBUG2 (d, ("SIOCSIFFLAGS\n")); break;
 case 129: CX_DEBUG2 (d, ("SIOCSIFADDR\n")); break;
 }


 s = splhigh ();
 CX_LOCK (bd);
 should_be_up = (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
 if (!was_up && should_be_up) {

  cx_up (d);
  cx_start (d);
 } else if (was_up && !should_be_up) {


  cx_down (d);
 }
 CX_UNLOCK (bd);
 splx (s);
 return 0;
}
