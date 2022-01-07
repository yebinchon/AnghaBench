
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct ucred {int dummy; } ;
struct socket {int so_type; TYPE_2__* so_proto; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct label {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct TYPE_4__ {TYPE_1__* pr_domain; } ;
struct TYPE_3__ {int dom_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int INP_LOWPORT ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ portacl_autoport_exempt ;
 scalar_t__ portacl_enabled ;
 int rules_check (struct ucred*,int,int,scalar_t__) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
socket_check_bind(struct ucred *cred, struct socket *so,
    struct label *solabel, struct sockaddr *sa)
{
 struct sockaddr_in *sin;
 struct inpcb *inp;
 int family, type;
 u_int16_t port;


 if (portacl_enabled == 0)
  return (0);


 if (so->so_proto->pr_domain->dom_family != PF_INET &&
     so->so_proto->pr_domain->dom_family != PF_INET6)
  return (0);


 if (so->so_type != SOCK_DGRAM &&
     so->so_type != SOCK_STREAM)
  return (0);


 if (sa->sa_family != AF_INET && sa->sa_family != AF_INET6)
  return (EINVAL);

 family = so->so_proto->pr_domain->dom_family;
 type = so->so_type;
 sin = (struct sockaddr_in *) sa;
 port = ntohs(sin->sin_port);
 if (portacl_autoport_exempt && port == 0) {
  inp = sotoinpcb(so);
  if ((inp->inp_flags & INP_LOWPORT) == 0)
   return (0);
 }

 return (rules_check(cred, family, type, port));
}
