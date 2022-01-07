
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
typedef int u_int ;
struct nm_udphdr {void* check; void* len; } ;
struct nm_tcphdr {int flags; void* check; int seq; } ;
struct nm_ipv6hdr {void* payload_len; } ;
struct nm_iphdr {void* check; void* id; void* tot_len; } ;
struct TYPE_2__ {void* tot_len; } ;


 int be16toh (void*) ;
 int be32toh (int ) ;
 void* htobe16 (int) ;
 int htobe32 (int) ;
 TYPE_1__* ip ;
 void* nm_os_csum_ipv4 (struct nm_iphdr*) ;
 int nm_os_csum_tcpudp_ipv4 (struct nm_iphdr*,int *,int,void**) ;
 int nm_os_csum_tcpudp_ipv6 (struct nm_ipv6hdr*,int *,int,void**) ;
 int nm_prdis (char*,int) ;

__attribute__((used)) static void
gso_fix_segment(uint8_t *pkt, size_t len, u_int ipv4, u_int iphlen, u_int tcp,
  u_int idx, u_int segmented_bytes, u_int last_segment)
{
 struct nm_iphdr *iph = (struct nm_iphdr *)(pkt);
 struct nm_ipv6hdr *ip6h = (struct nm_ipv6hdr *)(pkt);
 uint16_t *check = ((void*)0);
 uint8_t *check_data = ((void*)0);

 if (ipv4) {

  iph->tot_len = htobe16(len);
  nm_prdis("ip total length %u", be16toh(ip->tot_len));


  iph->id = htobe16(be16toh(iph->id) + idx);
  nm_prdis("ip identification %u", be16toh(iph->id));


  iph->check = 0;
  iph->check = nm_os_csum_ipv4(iph);
  nm_prdis("IP csum %x", be16toh(iph->check));
 } else {

  ip6h->payload_len = htobe16(len-iphlen);
 }

 if (tcp) {
  struct nm_tcphdr *tcph = (struct nm_tcphdr *)(pkt + iphlen);


  tcph->seq = htobe32(be32toh(tcph->seq) + segmented_bytes);
  nm_prdis("tcp seq %u", be32toh(tcph->seq));



  if (!last_segment)
   tcph->flags &= ~(0x8 | 0x1);
  nm_prdis("last_segment %u", last_segment);

  check = &tcph->check;
  check_data = (uint8_t *)tcph;
 } else {
  struct nm_udphdr *udph = (struct nm_udphdr *)(pkt + iphlen);


  udph->len = htobe16(len-iphlen);

  check = &udph->check;
  check_data = (uint8_t *)udph;
 }


 *check = 0;
 if (ipv4)
  nm_os_csum_tcpudp_ipv4(iph, check_data, len-iphlen, check);
 else
  nm_os_csum_tcpudp_ipv6(ip6h, check_data, len-iphlen, check);

 nm_prdis("TCP/UDP csum %x", be16toh(*check));
}
