
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u_char ;
struct ether_header {int ether_shost; int ether_type; } ;
struct ether_arp {int arp_hln; int arp_pln; int arp_tha; int arp_sha; int arp_pro; int arp_op; int arp_hrd; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ ETHERTYPE_IP ;
 scalar_t__ ETHERTYPE_REVARP ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 scalar_t__ REVARP_REQUEST ;
 scalar_t__ bcmp (char*,char*,int) ;
 int logmsg (int ,char*,...) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
rarp_check(u_char *p, u_int len)
{
 struct ether_header *ep = (struct ether_header *)p;
 struct ether_arp *ap = (struct ether_arp *)(p + sizeof(*ep));

 if (len < sizeof(*ep) + sizeof(*ap)) {
  logmsg(LOG_ERR, "truncated request, got %u, expected %lu",
    len, (u_long)(sizeof(*ep) + sizeof(*ap)));
  return 0;
 }



 if (ntohs(ep->ether_type) != ETHERTYPE_REVARP ||
     ntohs(ap->arp_hrd) != ARPHRD_ETHER ||
     ntohs(ap->arp_op) != REVARP_REQUEST ||
     ntohs(ap->arp_pro) != ETHERTYPE_IP ||
     ap->arp_hln != 6 || ap->arp_pln != 4) {
  logmsg(LOG_DEBUG, "request fails sanity check");
  return 0;
 }
 if (bcmp((char *)&ep->ether_shost, (char *)&ap->arp_sha, 6) != 0) {
  logmsg(LOG_DEBUG, "ether/arp sender address mismatch");
  return 0;
 }
 if (bcmp((char *)&ap->arp_sha, (char *)&ap->arp_tha, 6) != 0) {
  logmsg(LOG_DEBUG, "ether/arp target address mismatch");
  return 0;
 }
 return 1;
}
