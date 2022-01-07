
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_xname; } ;
struct ifaltq {scalar_t__ ifq_maxlen; struct ifnet* altq_ifp; int * altq_tbr; int altq_flags; int * altq_disc; scalar_t__ altq_type; int ifq_mtx; } ;


 int ALTQF_CANTCHANGE ;
 int MTX_DEF ;
 scalar_t__ ifqmaxlen ;
 int mtx_init (int *,int ,char*,int ) ;

void
ifq_init(struct ifaltq *ifq, struct ifnet *ifp)
{

 mtx_init(&ifq->ifq_mtx, ifp->if_xname, "if send queue", MTX_DEF);

 if (ifq->ifq_maxlen == 0)
  ifq->ifq_maxlen = ifqmaxlen;

 ifq->altq_type = 0;
 ifq->altq_disc = ((void*)0);
 ifq->altq_flags &= ALTQF_CANTCHANGE;
 ifq->altq_tbr = ((void*)0);
 ifq->altq_ifp = ifp;
}
