
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u_char ;
struct thread {int td_ucred; } ;
struct socket {TYPE_1__* so_proto; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct inpcbinfo {int dummy; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct inpcb {int inp_flags; int inp_vflag; scalar_t__ inp_lport; int in6p_laddr; int in6p_faddr; TYPE_3__ inp_laddr; TYPE_2__ inp_faddr; } ;
struct TYPE_4__ {int pr_protocol; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int EISCONN ;
 int IN6P_IPV6_V6ONLY ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 scalar_t__ INADDR_ANY ;
 int INP_HASH_WLOCK (struct inpcbinfo*) ;
 int INP_HASH_WUNLOCK (struct inpcbinfo*) ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int in6_pcbconnect (struct inpcb*,struct sockaddr*,int ) ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 int in_pcbconnect (struct inpcb*,struct sockaddr*,int ) ;
 int prison_remote_ip4 (int ,int *) ;
 int prison_remote_ip6 (int ,int *) ;
 int soisconnected (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 struct inpcbinfo* udp_get_inpcbinfo (int ) ;

__attribute__((used)) static int
udp6_connect(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 struct inpcb *inp;
 struct inpcbinfo *pcbinfo;
 struct sockaddr_in6 *sin6;
 int error;
 u_char vflagsav;

 pcbinfo = udp_get_inpcbinfo(so->so_proto->pr_protocol);
 inp = sotoinpcb(so);
 sin6 = (struct sockaddr_in6 *)nam;
 KASSERT(inp != ((void*)0), ("udp6_connect: inp == NULL"));




 INP_WLOCK(inp);
 if (!IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_faddr)) {
  error = EISCONN;
  goto out;
 }
 error = prison_remote_ip6(td->td_ucred, &sin6->sin6_addr);
 if (error != 0)
  goto out;
 vflagsav = inp->inp_vflag;
 inp->inp_vflag &= ~INP_IPV4;
 inp->inp_vflag |= INP_IPV6;
 INP_HASH_WLOCK(pcbinfo);
 error = in6_pcbconnect(inp, nam, td->td_ucred);
 INP_HASH_WUNLOCK(pcbinfo);





 if (error == 0)
  soisconnected(so);
 else if (IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr) &&
     inp->inp_lport == 0)
  inp->inp_vflag = vflagsav;
out:
 INP_WUNLOCK(inp);
 return (error);
}
