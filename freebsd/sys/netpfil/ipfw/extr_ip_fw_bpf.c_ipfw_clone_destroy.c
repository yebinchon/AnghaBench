
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_hdrlen; } ;


 scalar_t__ ETHER_HDR_LEN ;
 int NET_EPOCH_WAIT () ;
 int * V_log_if ;
 int * V_pflog_if ;
 int bpfdetach (struct ifnet*) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;

__attribute__((used)) static void
ipfw_clone_destroy(struct ifnet *ifp)
{

 if (ifp->if_hdrlen == ETHER_HDR_LEN)
  V_log_if = ((void*)0);
 else
  V_pflog_if = ((void*)0);

 NET_EPOCH_WAIT();
 bpfdetach(ifp);
 if_detach(ifp);
 if_free(ifp);
}
