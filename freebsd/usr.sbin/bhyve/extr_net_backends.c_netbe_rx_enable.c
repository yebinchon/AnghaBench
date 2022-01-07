
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_backend {void (* recv_enable ) (struct net_backend*) ;} ;


 void stub1 (struct net_backend*) ;

void
netbe_rx_enable(struct net_backend *be)
{

 return be->recv_enable(be);
}
