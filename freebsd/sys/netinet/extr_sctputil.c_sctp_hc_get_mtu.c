
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_5__ {int sin_addr; } ;
struct TYPE_4__ {int sa_family; } ;
union sctp_sockstore {TYPE_3__ sin6; TYPE_2__ sin; TYPE_1__ sa; } ;
typedef int uint32_t ;
typedef int uint16_t ;
struct in_conninfo {int inc6_faddr; int inc_flags; int inc_faddr; int inc_fibnum; } ;




 int INC_ISIPV6 ;
 int memset (struct in_conninfo*,int ,int) ;
 scalar_t__ tcp_hc_getmtu (struct in_conninfo*) ;

uint32_t
sctp_hc_get_mtu(union sctp_sockstore *addr, uint16_t fibnum)
{
 struct in_conninfo inc;

 memset(&inc, 0, sizeof(struct in_conninfo));
 inc.inc_fibnum = fibnum;
 switch (addr->sa.sa_family) {
 default:
  return (0);
 }
 return ((uint32_t)tcp_hc_getmtu(&inc));
}
