
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mib_refresh_iflist () ;
 int network_get_interfaces () ;

void
start_network_tbl(void)
{

 mib_refresh_iflist();
 network_get_interfaces();
}
