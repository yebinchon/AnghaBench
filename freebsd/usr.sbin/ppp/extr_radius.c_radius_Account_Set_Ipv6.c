
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int ifid; } ;
struct TYPE_4__ {TYPE_1__ ipv6; } ;
struct radacct {TYPE_2__ peer; int proto; } ;


 int PROTO_IPV6CP ;
 int memcpy (int *,int *,int) ;

void
radius_Account_Set_Ipv6(struct radacct *ac, u_char *ifid)
{
  ac->proto = PROTO_IPV6CP;
  memcpy(&ac->peer.ipv6.ifid, ifid, sizeof(ac->peer.ipv6.ifid));
}
