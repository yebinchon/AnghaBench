
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct alias_link {struct in_addr proxy_addr; } ;



void
SetProxyAddress(struct alias_link *lnk, struct in_addr addr)
{
 lnk->proxy_addr = addr;
}
