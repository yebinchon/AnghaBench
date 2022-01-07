
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {int so_cred; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct sockaddr {int sa_len; } ;
struct in6_addr {int dummy; } ;
struct inpcb {struct in6_addr in6p_laddr; int in6p_faddr; int in6p_outputopts; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ CK_STAILQ_EMPTY (int *) ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int INP_INFO_WLOCK (int *) ;
 int INP_INFO_WUNLOCK (int *) ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int V_ifnet ;
 int V_ip6_use_defzone ;
 int V_ripcbinfo ;
 int in6_selectsrc_socket (struct sockaddr_in6*,int ,struct inpcb*,int ,int,struct in6_addr*,int *) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;
 int soisconnected (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip6_connect(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 struct inpcb *inp;
 struct sockaddr_in6 *addr = (struct sockaddr_in6 *)nam;
 struct in6_addr in6a;
 int error = 0, scope_ambiguous = 0;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("rip6_connect: inp == NULL"));

 if (nam->sa_len != sizeof(*addr))
  return (EINVAL);
 if (CK_STAILQ_EMPTY(&V_ifnet))
  return (EADDRNOTAVAIL);
 if (addr->sin6_family != AF_INET6)
  return (EAFNOSUPPORT);
 if (addr->sin6_scope_id == 0 && !V_ip6_use_defzone)
  scope_ambiguous = 1;
 if ((error = sa6_embedscope(addr, V_ip6_use_defzone)) != 0)
  return (error);

 INP_INFO_WLOCK(&V_ripcbinfo);
 INP_WLOCK(inp);

 error = in6_selectsrc_socket(addr, inp->in6p_outputopts,
     inp, so->so_cred, scope_ambiguous, &in6a, ((void*)0));
 if (error) {
  INP_WUNLOCK(inp);
  INP_INFO_WUNLOCK(&V_ripcbinfo);
  return (error);
 }

 inp->in6p_faddr = addr->sin6_addr;
 inp->in6p_laddr = in6a;
 soisconnected(so);
 INP_WUNLOCK(inp);
 INP_INFO_WUNLOCK(&V_ripcbinfo);
 return (0);
}
