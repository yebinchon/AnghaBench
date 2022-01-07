
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int dummy; } ;


 struct ifaddrs* mock_ifaddrs ;

int
getifaddrs(struct ifaddrs **ifap)
{
 *ifap = mock_ifaddrs;
 return (0);
}
