
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pf_altq {scalar_t__ altq_disc; int ifname; } ;
struct TYPE_4__ {scalar_t__ altq_disc; } ;
struct ifnet {TYPE_1__ if_snd; } ;


 scalar_t__ ALTQ_IS_ENABLED (TYPE_1__*) ;
 int EINVAL ;
 int altq_detach (TYPE_1__*) ;
 int altq_disable (TYPE_1__*) ;
 struct ifnet* ifunit (int ) ;
 int splnet () ;
 int splx (int) ;

int
altq_pfdetach(struct pf_altq *a)
{
 struct ifnet *ifp;
 int s, error = 0;

 if ((ifp = ifunit(a->ifname)) == ((void*)0))
  return (EINVAL);



 if (a->altq_disc == ((void*)0) || a->altq_disc != ifp->if_snd.altq_disc)
  return (0);

 s = splnet();

 if (ALTQ_IS_ENABLED(&ifp->if_snd))
  error = altq_disable(&ifp->if_snd);
 if (error == 0)
  error = altq_detach(&ifp->if_snd);
 splx(s);

 return (error);
}
