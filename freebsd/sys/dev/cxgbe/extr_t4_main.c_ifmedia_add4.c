
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int dummy; } ;


 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int ifmedia_add (struct ifmedia*,int,int ,int *) ;

__attribute__((used)) static inline void
ifmedia_add4(struct ifmedia *ifm, int m)
{

 ifmedia_add(ifm, m, 0, ((void*)0));
 ifmedia_add(ifm, m | IFM_ETH_TXPAUSE, 0, ((void*)0));
 ifmedia_add(ifm, m | IFM_ETH_RXPAUSE, 0, ((void*)0));
 ifmedia_add(ifm, m | IFM_ETH_TXPAUSE | IFM_ETH_RXPAUSE, 0, ((void*)0));
}
