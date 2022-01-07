
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 int RTM_ADD ;
 int ifa_maintain_loopback_route (int ,char*,struct ifaddr*,struct sockaddr*) ;

int
ifa_add_loopback_route(struct ifaddr *ifa, struct sockaddr *ia)
{

 return (ifa_maintain_loopback_route(RTM_ADD, "insertion", ifa, ia));
}
