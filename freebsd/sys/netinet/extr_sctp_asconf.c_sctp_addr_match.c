
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_ipv6addr_param {int addr; } ;
struct sctp_ipv4addr_param {int addr; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;




 int SCTP_IPV4_ADDRESS ;
 int SCTP_IPV6_ADDRESS ;
 int memcmp (int *,int *,int) ;
 int ntohs (int ) ;

__attribute__((used)) static uint32_t
sctp_addr_match(struct sctp_paramhdr *ph, struct sockaddr *sa)
{






 switch (sa->sa_family) {
 default:
  break;
 }
 return (0);
}
