
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {scalar_t__ sin6_family; scalar_t__ sin6_port; scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct sockaddr {int sa_len; } ;
struct inpcb {int inp_cred; int in6p_outputopts; int inp_pcbinfo; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ AF_INET6 ;
 int CK_STAILQ_EMPTY (int *) ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INP_HASH_WLOCK_ASSERT (int ) ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int V_in6_ifaddrhead ;
 int V_ip6_use_defzone ;
 int in6_selectsrc_socket (struct sockaddr_in6*,int ,struct inpcb*,int ,int,struct in6_addr*,int *) ;
 int in6addr_loopback ;
 int prison_remote_ip6 (int ,int *) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;

__attribute__((used)) static int
in6_pcbladdr(struct inpcb *inp, struct sockaddr *nam,
    struct in6_addr *plocal_addr6)
{
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)nam;
 int error = 0;
 int scope_ambiguous = 0;
 struct in6_addr in6a;

 INP_WLOCK_ASSERT(inp);
 INP_HASH_WLOCK_ASSERT(inp->inp_pcbinfo);

 if (nam->sa_len != sizeof (*sin6))
  return (EINVAL);
 if (sin6->sin6_family != AF_INET6)
  return (EAFNOSUPPORT);
 if (sin6->sin6_port == 0)
  return (EADDRNOTAVAIL);

 if (sin6->sin6_scope_id == 0 && !V_ip6_use_defzone)
  scope_ambiguous = 1;
 if ((error = sa6_embedscope(sin6, V_ip6_use_defzone)) != 0)
  return(error);

 if (!CK_STAILQ_EMPTY(&V_in6_ifaddrhead)) {




  if (IN6_IS_ADDR_UNSPECIFIED(&sin6->sin6_addr))
   sin6->sin6_addr = in6addr_loopback;
 }
 if ((error = prison_remote_ip6(inp->inp_cred, &sin6->sin6_addr)) != 0)
  return (error);

 error = in6_selectsrc_socket(sin6, inp->in6p_outputopts,
     inp, inp->inp_cred, scope_ambiguous, &in6a, ((void*)0));
 if (error)
  return (error);
 *plocal_addr6 = in6a;







 return (0);
}
