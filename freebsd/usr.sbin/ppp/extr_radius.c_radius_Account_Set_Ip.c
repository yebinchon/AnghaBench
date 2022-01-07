
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int addr; } ;
struct TYPE_4__ {TYPE_1__ ip; } ;
struct radacct {TYPE_2__ peer; int proto; } ;
struct in_addr {int dummy; } ;


 int PROTO_IPCP ;
 int memcpy (int *,struct in_addr*,int) ;

void
radius_Account_Set_Ip(struct radacct *ac, struct in_addr *peer_ip,
        struct in_addr *netmask)
{
  ac->proto = PROTO_IPCP;
  memcpy(&ac->peer.ip.addr, peer_ip, sizeof(ac->peer.ip.addr));
  memcpy(&ac->peer.ip.mask, netmask, sizeof(ac->peer.ip.mask));
}
