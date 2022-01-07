
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct sockaddr_in6 {int sin_len; int sin6_len; int sin6_addr; int sin_addr; int sin6_port; int sin6_family; int sin_port; int sin_family; } ;
struct sockaddr_in {int sin_len; int sin6_len; int sin6_addr; int sin_addr; int sin6_port; int sin6_family; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sctphdr {int src_port; } ;
struct sctp_tcb {int dummy; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_nets {int dummy; } ;
struct sctp_ipv6addr_param {int addr; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct sctp_inpcb {int dummy; } ;
struct sctp_init_chunk {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int sin6 ;
typedef int sin4 ;
typedef int param_buf ;
typedef int ip6_param ;
typedef int ip4_param ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ SCTP_IPV4_ADDRESS ;
 scalar_t__ SCTP_IPV6_ADDRESS ;
 scalar_t__ SCTP_SIZE32 (scalar_t__) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 scalar_t__ ntohs (int ) ;
 struct sctp_tcb* sctp_findassociation_ep_addr (struct sctp_inpcb**,struct sockaddr*,struct sctp_nets**,struct sockaddr*,int *) ;
 struct sctp_paramhdr* sctp_get_next_param (struct mbuf*,int,struct sctp_paramhdr*,int) ;

__attribute__((used)) static struct sctp_tcb *
sctp_findassociation_special_addr(struct mbuf *m, int offset,
    struct sctphdr *sh, struct sctp_inpcb **inp_p, struct sctp_nets **netp,
    struct sockaddr *dst)
{
 struct sctp_paramhdr *phdr, param_buf;




 uint16_t plen;
 offset += sizeof(struct sctp_init_chunk);

 phdr = sctp_get_next_param(m, offset, &param_buf, sizeof(param_buf));
 while (phdr != ((void*)0)) {




  plen = ntohs(phdr->param_length);
  if (plen == 0) {
   break;
  }
  offset += SCTP_SIZE32(plen);
  phdr = sctp_get_next_param(m, offset, &param_buf,
      sizeof(param_buf));
 }
 return (((void*)0));
}
