
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_int ;
struct in_addr {int s_addr; } ;


 int LINK_PPTP ;
 int LINK_TABLE_IN_SIZE ;

__attribute__((used)) static u_int
StartPointIn(struct in_addr alias_addr,
    u_short alias_port,
    int link_type)
{
 u_int n;

 n = alias_addr.s_addr;
 if (link_type != LINK_PPTP)
  n += alias_port;
 n += link_type;
 return (n % LINK_TABLE_IN_SIZE);
}
