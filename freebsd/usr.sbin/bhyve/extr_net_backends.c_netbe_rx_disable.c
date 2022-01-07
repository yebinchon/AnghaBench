
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_backend {void (* recv_disable ) (struct net_backend*) ;} ;


 void stub1 (struct net_backend*) ;

void
netbe_rx_disable(struct net_backend *be)
{

 return be->recv_disable(be);
}
