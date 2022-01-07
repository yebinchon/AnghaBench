
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct alias_link {struct in_addr dst_addr; } ;



struct in_addr
GetDestAddress(struct alias_link *lnk)
{
 return (lnk->dst_addr);
}
