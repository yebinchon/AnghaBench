
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int (*) (),int *,int ) ;
 int nmbclusters_change ;
 int tcp_pcap_max_set () ;

void
tcp_pcap_init(void)
{

 tcp_pcap_max_set();
 EVENTHANDLER_REGISTER(nmbclusters_change, tcp_pcap_max_set,
  ((void*)0), EVENTHANDLER_PRI_ANY);
}
