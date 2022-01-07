
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct sockaddr_in6 {int sin_len; int sin6_len; void* sin6_port; int sin6_family; void* sin_port; int sin_family; } ;
struct sockaddr_in {int sin_len; int sin6_len; void* sin6_port; int sin6_family; void* sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int td_ucred; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EALREADY ;
 int EINVAL ;
 int IPPROTO_UDP ;
 int PF_INET ;
 int PF_INET6 ;
 int * SCTP_BASE_INFO (int ) ;
 int SCTP_BASE_SYSCTL (int ) ;
 int SOCK_DGRAM ;
 TYPE_1__* curthread ;
 void* htons (int ) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 scalar_t__ ntohs (int ) ;
 int sctp_over_udp_stop () ;
 int sctp_recv_icmp6_tunneled_packet ;
 int sctp_recv_icmp_tunneled_packet ;
 int sctp_recv_udp_tunneled_packet ;
 int sctp_udp_tunneling_port ;
 int sobind (int *,struct sockaddr*,TYPE_1__*) ;
 int socreate (int ,int **,int ,int ,int ,TYPE_1__*) ;
 int udp4_tun_socket ;
 int udp6_tun_socket ;
 int udp_set_kernel_tunneling (int *,int ,int ,int *) ;

int
sctp_over_udp_start(void)
{
 uint16_t port;
 int ret;
 port = SCTP_BASE_SYSCTL(sctp_udp_tunneling_port);
 if (ntohs(port) == 0) {

  return (EINVAL);
 }
 return (0);
}
