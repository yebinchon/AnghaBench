
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_info {int sc_media; int * xn_ifp; int txq; int rxq; } ;


 int M_DEVBUF ;
 int XN_LOCK (struct netfront_info*) ;
 int XN_UNLOCK (struct netfront_info*) ;
 int ether_ifdetach (int *) ;
 int free (int ,int ) ;
 int if_free (int *) ;
 int ifmedia_removeall (int *) ;
 int netif_disconnect_backend (struct netfront_info*) ;
 int xn_stop (struct netfront_info*) ;

__attribute__((used)) static void
netif_free(struct netfront_info *np)
{

 XN_LOCK(np);
 xn_stop(np);
 XN_UNLOCK(np);
 netif_disconnect_backend(np);
 ether_ifdetach(np->xn_ifp);
 free(np->rxq, M_DEVBUF);
 free(np->txq, M_DEVBUF);
 if_free(np->xn_ifp);
 np->xn_ifp = ((void*)0);
 ifmedia_removeall(&np->sc_media);
}
