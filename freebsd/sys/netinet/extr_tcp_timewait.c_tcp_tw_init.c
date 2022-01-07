
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcptw {int dummy; } ;


 int TAILQ_INIT (int *) ;
 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 int TW_LOCK_INIT (int ,char*) ;
 int UMA_ALIGN_PTR ;
 int V_tcptw_zone ;
 int V_tw_lock ;
 int V_twq_2msl ;
 scalar_t__ maxtcptw ;
 scalar_t__ tcptw_auto_size () ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,scalar_t__) ;

void
tcp_tw_init(void)
{

 V_tcptw_zone = uma_zcreate("tcptw", sizeof(struct tcptw),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 TUNABLE_INT_FETCH("net.inet.tcp.maxtcptw", &maxtcptw);
 if (maxtcptw == 0)
  uma_zone_set_max(V_tcptw_zone, tcptw_auto_size());
 else
  uma_zone_set_max(V_tcptw_zone, maxtcptw);
 TAILQ_INIT(&V_twq_2msl);
 TW_LOCK_INIT(V_tw_lock, "tcptw");
}
