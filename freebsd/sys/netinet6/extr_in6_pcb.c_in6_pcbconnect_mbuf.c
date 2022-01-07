
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct inpcbinfo {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {scalar_t__ inp_lport; int inp_flow; int inp_flags; int inp_fport; int in6p_faddr; struct in6_addr in6p_laddr; struct inpcbinfo* inp_pcbinfo; } ;


 int EADDRINUSE ;
 int IN6P_AUTOFLOWLABEL ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (struct in6_addr*) ;
 int INP_HASH_WLOCK_ASSERT (struct inpcbinfo*) ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int IPV6_FLOWLABEL_MASK ;
 int htonl (int ) ;
 int in6_pcbbind (struct inpcb*,struct sockaddr*,struct ucred*) ;
 int in6_pcbladdr (struct inpcb*,struct sockaddr*,struct in6_addr*) ;
 int * in6_pcblookup_hash_locked (struct inpcbinfo*,int *,int ,struct in6_addr*,scalar_t__,int ,int *) ;
 int in_pcbrehash_mbuf (struct inpcb*,struct mbuf*) ;
 int ip6_randomflowlabel () ;

int
in6_pcbconnect_mbuf(struct inpcb *inp, struct sockaddr *nam,
    struct ucred *cred, struct mbuf *m)
{
 struct inpcbinfo *pcbinfo = inp->inp_pcbinfo;
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)nam;
 struct in6_addr addr6;
 int error;

 INP_WLOCK_ASSERT(inp);
 INP_HASH_WLOCK_ASSERT(pcbinfo);





 if ((error = in6_pcbladdr(inp, nam, &addr6)) != 0)
  return (error);

 if (in6_pcblookup_hash_locked(pcbinfo, &sin6->sin6_addr,
          sin6->sin6_port,
         IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr)
         ? &addr6 : &inp->in6p_laddr,
         inp->inp_lport, 0, ((void*)0)) != ((void*)0)) {
  return (EADDRINUSE);
 }
 if (IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr)) {
  if (inp->inp_lport == 0) {
   error = in6_pcbbind(inp, (struct sockaddr *)0, cred);
   if (error)
    return (error);
  }
  inp->in6p_laddr = addr6;
 }
 inp->in6p_faddr = sin6->sin6_addr;
 inp->inp_fport = sin6->sin6_port;

 inp->inp_flow &= ~IPV6_FLOWLABEL_MASK;
 if (inp->inp_flags & IN6P_AUTOFLOWLABEL)
  inp->inp_flow |=
      (htonl(ip6_randomflowlabel()) & IPV6_FLOWLABEL_MASK);

 in_pcbrehash_mbuf(inp, m);

 return (0);
}
