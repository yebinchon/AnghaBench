
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct if_info {int ii_ifname; int ii_fd; int ii_ipaddr; scalar_t__ ii_eaddr; } ;
struct ether_header {int ether_shost; int ether_dhost; int ether_type; } ;
struct ether_arp {int arp_tha; scalar_t__ arp_spa; scalar_t__ arp_tpa; int arp_sha; int arp_op; } ;
typedef int in_addr_t ;


 int ETHERTYPE_REVARP ;
 int LOG_ERR ;
 int LOG_INFO ;
 int REVARP_REPLY ;
 int bcopy (char*,char*,int) ;
 int bzero (char*,scalar_t__) ;
 int eatoa (int ) ;
 int htons (int ) ;
 int intoa (int ) ;
 int logmsg (int ,char*,scalar_t__,scalar_t__,...) ;
 int ntohl (int ) ;
 int update_arptab (int *,int ) ;
 scalar_t__ verbose ;
 scalar_t__ write (int ,char*,scalar_t__) ;

__attribute__((used)) static void
rarp_reply(struct if_info *ii, struct ether_header *ep, in_addr_t ipaddr,
  u_int len)
{
 u_int n;
 struct ether_arp *ap = (struct ether_arp *)(ep + 1);

 update_arptab((u_char *)&ap->arp_sha, ipaddr);




 ap->arp_op = htons(REVARP_REPLY);




 bcopy((char *)&ap->arp_sha, (char *)&ep->ether_dhost, 6);
 bcopy((char *)ii->ii_eaddr, (char *)&ep->ether_shost, 6);
 bcopy((char *)ii->ii_eaddr, (char *)&ap->arp_sha, 6);

 bcopy((char *)&ipaddr, (char *)ap->arp_tpa, 4);

 bcopy((char *)&ii->ii_ipaddr, (char *)ap->arp_spa, 4);


 bzero((char *)ep + (sizeof(*ep) + sizeof(*ap)),
   len - (sizeof(*ep) + sizeof(*ap)));
 n = write(ii->ii_fd, (char *)ep, len);
 if (n != len)
  logmsg(LOG_ERR, "write: only %d of %d bytes written", n, len);
 if (verbose)
  logmsg(LOG_INFO, "%s %s at %s REPLIED", ii->ii_ifname,
      eatoa(ap->arp_tha),
      intoa(ntohl(ipaddr)));
}
