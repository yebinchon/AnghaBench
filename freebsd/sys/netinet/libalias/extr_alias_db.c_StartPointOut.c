
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_int ;
struct in_addr {int s_addr; } ;


 int LINK_PPTP ;
 int LINK_TABLE_OUT_SIZE ;

__attribute__((used)) static u_int
StartPointOut(struct in_addr src_addr, struct in_addr dst_addr,
    u_short src_port, u_short dst_port, int link_type)
{
 u_int n;

 n = src_addr.s_addr;
 n += dst_addr.s_addr;
 if (link_type != LINK_PPTP) {
  n += src_port;
  n += dst_port;
 }
 n += link_type;

 return (n % LINK_TABLE_OUT_SIZE);
}
