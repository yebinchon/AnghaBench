
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * udp_tun_icmp_t ;
typedef int * udp_tun_func_t ;
struct udpcb {void* u_tun_ctx; int * u_icmp_func; int * u_tun_func; } ;
struct socket {scalar_t__ so_type; } ;
struct inpcb {int dummy; } ;


 int EBUSY ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int,char*) ;
 scalar_t__ SOCK_DGRAM ;
 struct udpcb* intoudpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
udp_set_kernel_tunneling(struct socket *so, udp_tun_func_t f, udp_tun_icmp_t i, void *ctx)
{
 struct inpcb *inp;
 struct udpcb *up;

 KASSERT(so->so_type == SOCK_DGRAM,
     ("udp_set_kernel_tunneling: !dgram"));
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("udp_set_kernel_tunneling: inp == NULL"));
 INP_WLOCK(inp);
 up = intoudpcb(inp);
 if ((up->u_tun_func != ((void*)0)) ||
     (up->u_icmp_func != ((void*)0))) {
  INP_WUNLOCK(inp);
  return (EBUSY);
 }
 up->u_tun_func = f;
 up->u_icmp_func = i;
 up->u_tun_ctx = ctx;
 INP_WUNLOCK(inp);
 return (0);
}
