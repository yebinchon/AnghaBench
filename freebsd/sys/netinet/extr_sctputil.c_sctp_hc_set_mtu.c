
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin6_addr; } ;
struct TYPE_6__ {int sin_addr; } ;
struct TYPE_5__ {int sa_family; } ;
union sctp_sockstore {TYPE_1__ sin6; TYPE_3__ sin; TYPE_2__ sa; } ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int u_long ;
struct in_conninfo {int inc6_faddr; int inc_flags; int inc_faddr; int inc_fibnum; } ;




 int INC_ISIPV6 ;
 int memset (struct in_conninfo*,int ,int) ;
 int tcp_hc_updatemtu (struct in_conninfo*,int ) ;

void
sctp_hc_set_mtu(union sctp_sockstore *addr, uint16_t fibnum, uint32_t mtu)
{
 struct in_conninfo inc;

 memset(&inc, 0, sizeof(struct in_conninfo));
 inc.inc_fibnum = fibnum;
 switch (addr->sa.sa_family) {
 default:
  return;
 }
 tcp_hc_updatemtu(&inc, (u_long)mtu);
}
