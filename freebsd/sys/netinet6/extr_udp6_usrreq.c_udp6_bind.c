
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct thread {int td_ucred; } ;
struct socket {TYPE_1__* so_proto; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int inp_flags; int inp_vflag; } ;
struct TYPE_2__ {int pr_protocol; } ;


 int IN6P_IPV6_V6ONLY ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 int INP_HASH_WLOCK (struct inpcbinfo*) ;
 int INP_HASH_WUNLOCK (struct inpcbinfo*) ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int in6_pcbbind (struct inpcb*,struct sockaddr*,int ) ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 int in_pcbbind (struct inpcb*,struct sockaddr*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 struct inpcbinfo* udp_get_inpcbinfo (int ) ;

__attribute__((used)) static int
udp6_bind(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 struct inpcb *inp;
 struct inpcbinfo *pcbinfo;
 int error;
 u_char vflagsav;

 pcbinfo = udp_get_inpcbinfo(so->so_proto->pr_protocol);
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("udp6_bind: inp == NULL"));

 INP_WLOCK(inp);
 INP_HASH_WLOCK(pcbinfo);
 vflagsav = inp->inp_vflag;
 inp->inp_vflag &= ~INP_IPV4;
 inp->inp_vflag |= INP_IPV6;
 if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
  struct sockaddr_in6 *sin6_p;

  sin6_p = (struct sockaddr_in6 *)nam;

  if (IN6_IS_ADDR_UNSPECIFIED(&sin6_p->sin6_addr))
   inp->inp_vflag |= INP_IPV4;
 }

 error = in6_pcbbind(inp, nam, td->td_ucred);



 if (error != 0)
  inp->inp_vflag = vflagsav;
 INP_HASH_WUNLOCK(pcbinfo);
 INP_WUNLOCK(inp);
 return (error);
}
