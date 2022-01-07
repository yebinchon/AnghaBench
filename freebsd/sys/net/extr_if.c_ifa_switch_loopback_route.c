
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 int RTM_CHANGE ;
 int ifa_maintain_loopback_route (int ,char*,struct ifaddr*,struct sockaddr*) ;

int
ifa_switch_loopback_route(struct ifaddr *ifa, struct sockaddr *ia)
{

 return (ifa_maintain_loopback_route(RTM_CHANGE, "switch", ifa, ia));
}
