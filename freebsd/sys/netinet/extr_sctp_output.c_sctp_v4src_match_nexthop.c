
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct TYPE_11__ {scalar_t__ sa_family; } ;
struct TYPE_7__ {TYPE_6__ sa; struct sockaddr_in sin; } ;
struct sctp_ifa {TYPE_1__ address; scalar_t__ ifa; } ;
struct in_addr {int s_addr; } ;
struct ifaddr {scalar_t__ ifa_netmask; } ;
struct TYPE_10__ {TYPE_3__* ro_rt; } ;
typedef TYPE_4__ sctp_route_t ;
struct TYPE_9__ {TYPE_6__* rt_gateway; } ;


 scalar_t__ AF_INET ;
 int SCTPDBG (int ,char*,...) ;
 int SCTPDBG_ADDR (int ,TYPE_6__*) ;
 int SCTP_DEBUG_OUTPUT1 ;
 int SCTP_DEBUG_OUTPUT2 ;

int
sctp_v4src_match_nexthop(struct sctp_ifa *sifa, sctp_route_t *ro)
{
 return (0);
}
