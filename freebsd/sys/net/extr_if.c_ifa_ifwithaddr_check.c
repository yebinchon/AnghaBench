
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct epoch_tracker {int dummy; } ;


 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int * ifa_ifwithaddr (struct sockaddr const*) ;

int
ifa_ifwithaddr_check(const struct sockaddr *addr)
{
 struct epoch_tracker et;
 int rc;

 NET_EPOCH_ENTER(et);
 rc = (ifa_ifwithaddr(addr) != ((void*)0));
 NET_EPOCH_EXIT(et);
 return (rc);
}
