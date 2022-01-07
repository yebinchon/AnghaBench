
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_long ;
struct ifnet {int if_drv_flags; int if_flags; TYPE_3__* if_softc; } ;
struct TYPE_11__ {TYPE_2__* chan; TYPE_1__* board; } ;
typedef TYPE_3__ drv_t ;
typedef int caddr_t ;
typedef int bdrv_t ;
struct TYPE_10__ {scalar_t__ debug_shadow; scalar_t__ debug; } ;
struct TYPE_9__ {int * sys; } ;


 int CP_DEBUG (TYPE_3__*,char*) ;
 int CP_DEBUG2 (TYPE_3__*,char*) ;
 int CP_LOCK (int *) ;
 int CP_UNLOCK (int *) ;
 int IFF_DEBUG ;
 int IFF_DRV_RUNNING ;




 int cp_down (TYPE_3__*) ;
 int cp_start (TYPE_3__*) ;
 int cp_up (TYPE_3__*) ;
 int splimp () ;
 int splx (int) ;
 int sppp_ioctl (struct ifnet*,int ,int ) ;

__attribute__((used)) static int cp_sioctl (struct ifnet *ifp, u_long cmd, caddr_t data)
{
 drv_t *d = ifp->if_softc;
 bdrv_t *bd = d->board->sys;
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
 default: CP_DEBUG2 (d, ("ioctl 0x%lx\n", cmd)); return 0;
 case 131: CP_DEBUG2 (d, ("ioctl SIOCADDMULTI\n")); return 0;
 case 130: CP_DEBUG2 (d, ("ioctl SIOCDELMULTI\n")); return 0;
 case 128: CP_DEBUG2 (d, ("ioctl SIOCSIFFLAGS\n")); break;
 case 129: CP_DEBUG2 (d, ("ioctl SIOCSIFADDR\n")); break;
 }


 s = splimp ();
 CP_LOCK (bd);
 should_be_up = (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
 if (! was_up && should_be_up) {

  cp_up (d);
  cp_start (d);
 } else if (was_up && ! should_be_up) {


  cp_down (d);
 }
 CP_DEBUG (d, ("ioctl 0x%lx p4\n", cmd));
 CP_UNLOCK (bd);
 splx (s);
 return 0;
}
