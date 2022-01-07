
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpcb {int dummy; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int IPI_HASHFIELDS_2TUPLE ;
 int UDBHASHSIZE ;
 int UMA_ALIGN_PTR ;
 int V_udb ;
 int V_udbinfo ;
 int V_udpcb_zone ;
 int in_pcbinfo_init (int *,char*,int *,int ,int ,char*,int ,int ) ;
 int maxsockets ;
 int maxsockets_change ;
 int udp_inpcb_init ;
 int udp_zone_change ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int ) ;
 int uma_zone_set_warning (int ,char*) ;

void
udp_init(void)
{
 in_pcbinfo_init(&V_udbinfo, "udp", &V_udb, UDBHASHSIZE, UDBHASHSIZE,
     "udp_inpcb", udp_inpcb_init, IPI_HASHFIELDS_2TUPLE);
 V_udpcb_zone = uma_zcreate("udpcb", sizeof(struct udpcb),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 uma_zone_set_max(V_udpcb_zone, maxsockets);
 uma_zone_set_warning(V_udpcb_zone, "kern.ipc.maxsockets limit reached");
 EVENTHANDLER_REGISTER(maxsockets_change, udp_zone_change, ((void*)0),
     EVENTHANDLER_PRI_ANY);
}
