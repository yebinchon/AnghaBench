
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNTER_ARRAY_ALLOC (int ,int ,int ) ;
 int M_WAITOK ;
 int TCP_NSTATES ;
 int VNET_PCPUSTAT_ALLOC (int ,int ) ;
 int V_tcps_states ;
 int tcpstat ;

__attribute__((used)) static void
tcp_vnet_init(const void *unused)
{

 COUNTER_ARRAY_ALLOC(V_tcps_states, TCP_NSTATES, M_WAITOK);
 VNET_PCPUSTAT_ALLOC(tcpstat, M_WAITOK);
}
