
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct sctp_scoping {scalar_t__ loopback_scope; int site_scope; int ipv6_addr_legal; int ipv4_local_scope; int ipv4_addr_legal; } ;
struct TYPE_4__ {int sa_family; } ;
struct TYPE_5__ {struct sockaddr_in6 sin6; struct sockaddr_in sin; TYPE_1__ sa; } ;
struct sctp_ifa {int localifa_flags; TYPE_2__ address; scalar_t__ ifn_p; } ;




 int IN4_ISPRIVATE_ADDRESS (TYPE_3__*) ;
 int IN6_IS_ADDR_LINKLOCAL (int *) ;
 int IN6_IS_ADDR_SITELOCAL (int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int SCTP_ADDR_IFA_UNUSEABLE ;
 scalar_t__ SCTP_IFN_IS_IFT_LOOP (scalar_t__) ;
 int sctp_gather_internal_ifa_flags (struct sctp_ifa*) ;

int
sctp_is_address_in_scope(struct sctp_ifa *ifa,
    struct sctp_scoping *scope,
    int do_update)
{
 if ((scope->loopback_scope == 0) &&
     (ifa->ifn_p) && SCTP_IFN_IS_IFT_LOOP(ifa->ifn_p)) {



  return (0);
 }
 switch (ifa->address.sa.sa_family) {
 default:
  return (0);
 }
 return (1);
}
