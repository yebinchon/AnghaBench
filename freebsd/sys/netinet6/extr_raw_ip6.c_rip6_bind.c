
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_addr; } ;
struct sockaddr {int sa_len; } ;
struct inpcb {int in6p_laddr; } ;
struct in6_ifaddr {int ia6_flags; } ;
struct ifaddr {int dummy; } ;
struct epoch_tracker {int dummy; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ CK_STAILQ_EMPTY (int *) ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int IN6_IFF_ANYCAST ;
 int IN6_IFF_DEPRECATED ;
 int IN6_IFF_DETACHED ;
 int IN6_IFF_NOTREADY ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INP_INFO_WLOCK (int *) ;
 int INP_INFO_WUNLOCK (int *) ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int V_ifnet ;
 int V_ip6_use_defzone ;
 int V_ripcbinfo ;
 struct ifaddr* ifa_ifwithaddr (struct sockaddr*) ;
 int prison_check_ip6 (int ,int *) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip6_bind(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 struct epoch_tracker et;
 struct inpcb *inp;
 struct sockaddr_in6 *addr = (struct sockaddr_in6 *)nam;
 struct ifaddr *ifa = ((void*)0);
 int error = 0;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("rip6_bind: inp == NULL"));

 if (nam->sa_len != sizeof(*addr))
  return (EINVAL);
 if ((error = prison_check_ip6(td->td_ucred, &addr->sin6_addr)) != 0)
  return (error);
 if (CK_STAILQ_EMPTY(&V_ifnet) || addr->sin6_family != AF_INET6)
  return (EADDRNOTAVAIL);
 if ((error = sa6_embedscope(addr, V_ip6_use_defzone)) != 0)
  return (error);

 NET_EPOCH_ENTER(et);
 if (!IN6_IS_ADDR_UNSPECIFIED(&addr->sin6_addr) &&
     (ifa = ifa_ifwithaddr((struct sockaddr *)addr)) == ((void*)0)) {
  NET_EPOCH_EXIT(et);
  return (EADDRNOTAVAIL);
 }
 if (ifa != ((void*)0) &&
     ((struct in6_ifaddr *)ifa)->ia6_flags &
     (IN6_IFF_ANYCAST|IN6_IFF_NOTREADY|
      IN6_IFF_DETACHED|IN6_IFF_DEPRECATED)) {
  NET_EPOCH_EXIT(et);
  return (EADDRNOTAVAIL);
 }
 NET_EPOCH_EXIT(et);
 INP_INFO_WLOCK(&V_ripcbinfo);
 INP_WLOCK(inp);
 inp->in6p_laddr = addr->sin6_addr;
 INP_WUNLOCK(inp);
 INP_INFO_WUNLOCK(&V_ripcbinfo);
 return (0);
}
