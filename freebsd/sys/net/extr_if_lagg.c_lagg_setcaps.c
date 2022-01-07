
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_port {int (* lp_ioctl ) (TYPE_1__*,int ,int ) ;TYPE_1__* lp_ifp; } ;
struct ifreq {int ifr_reqcap; } ;
typedef int caddr_t ;
struct TYPE_2__ {int if_capenable; } ;


 int ENXIO ;
 int SIOCSIFCAP ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
lagg_setcaps(struct lagg_port *lp, int cap)
{
 struct ifreq ifr;

 if (lp->lp_ifp->if_capenable == cap)
  return (0);
 if (lp->lp_ioctl == ((void*)0))
  return (ENXIO);
 ifr.ifr_reqcap = cap;
 return ((*lp->lp_ioctl)(lp->lp_ifp, SIOCSIFCAP, (caddr_t)&ifr));
}
