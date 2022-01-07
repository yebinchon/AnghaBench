
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct alias_link {int src_port; } ;



u_short
GetOriginalPort(struct alias_link *lnk)
{
 return (lnk->src_port);
}
