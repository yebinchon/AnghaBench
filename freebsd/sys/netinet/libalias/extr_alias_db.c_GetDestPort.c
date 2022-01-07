
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct alias_link {int dst_port; } ;



__attribute__((used)) static u_short
GetDestPort(struct alias_link *lnk)
{
 return (lnk->dst_port);
}
