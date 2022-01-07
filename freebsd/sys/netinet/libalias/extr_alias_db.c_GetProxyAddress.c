
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct alias_link {struct in_addr proxy_addr; } ;



struct in_addr
GetProxyAddress(struct alias_link *lnk)
{
 return (lnk->proxy_addr);
}
