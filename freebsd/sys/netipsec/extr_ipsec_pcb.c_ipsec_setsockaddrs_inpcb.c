
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {int sin6_len; int sin_len; int sin_port; int sin_addr; void* sin_family; void* sin6_scope_id; TYPE_1__ sin6_addr; int sin6_port; void* sin6_family; } ;
union sockaddr_union {struct sockaddr_in6 sin; struct sockaddr_in6 sin6; } ;
typedef scalar_t__ u_int ;
struct sockaddr_in {int sin6_len; int sin_len; int sin_port; int sin_addr; void* sin_family; void* sin6_scope_id; TYPE_1__ sin6_addr; int sin6_port; void* sin6_family; } ;
struct inpcb {int inp_vflag; int inp_fport; int inp_faddr; int inp_lport; int inp_laddr; TYPE_1__ in6p_faddr; TYPE_1__ in6p_laddr; } ;


 void* AF_INET ;
 void* AF_INET6 ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (TYPE_1__*) ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 scalar_t__ IPSEC_DIR_OUTBOUND ;
 int bzero (struct sockaddr_in6*,int) ;
 void* ntohs (scalar_t__) ;

__attribute__((used)) static void
ipsec_setsockaddrs_inpcb(struct inpcb *inp, union sockaddr_union *src,
    union sockaddr_union *dst, u_int dir)
{
}
