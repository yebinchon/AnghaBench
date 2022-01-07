
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct alias_link {int proxy_port; } ;



u_short
GetProxyPort(struct alias_link *lnk)
{
 return (lnk->proxy_port);
}
