
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 TYPE_1__* NA (struct ifnet*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

void *
nm_os_send_up(struct ifnet *ifp, struct mbuf *m, struct mbuf *prev)
{
 NA(ifp)->if_input(ifp, m);
 return ((void*)0);
}
