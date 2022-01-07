
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int INP_PCBHASH_RAW_SIZE ;
 int IPI_HASHFIELDS_NONE ;
 int V_ripcb ;
 int V_ripcbinfo ;
 int in_pcbinfo_init (int *,char*,int *,int ,int,char*,int ,int ) ;
 int maxsockets_change ;
 int rip_inpcb_init ;
 int rip_zone_change ;

void
rip_init(void)
{

 in_pcbinfo_init(&V_ripcbinfo, "rip", &V_ripcb, INP_PCBHASH_RAW_SIZE,
     1, "ripcb", rip_inpcb_init, IPI_HASHFIELDS_NONE);
 EVENTHANDLER_REGISTER(maxsockets_change, rip_zone_change, ((void*)0),
     EVENTHANDLER_PRI_ANY);
}
