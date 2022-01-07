
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockopt {int* sopt_val; int sopt_valsize; int * sopt_td; int sopt_name; int sopt_level; int sopt_dir; } ;
struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct __rpc_sockinfo {int si_proto; int si_socktype; scalar_t__ si_af; int si_alen; } ;
typedef scalar_t__ sa_family_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;


 scalar_t__ AF_LOCAL ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int M_SONAME ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOPT_GET ;
 int SO_TYPE ;
 int free (struct sockaddr*,int ) ;
 int sogetopt (struct socket*,struct sockopt*) ;
 int stub1 (struct socket*,struct sockaddr**) ;

int
__rpc_socket2sockinfo(struct socket *so, struct __rpc_sockinfo *sip)
{
 int type, proto;
 struct sockaddr *sa;
 sa_family_t family;
 struct sockopt opt;
 int error;

 CURVNET_SET(so->so_vnet);
 error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
 CURVNET_RESTORE();
 if (error)
  return 0;

 sip->si_alen = sa->sa_len;
 family = sa->sa_family;
 free(sa, M_SONAME);

 opt.sopt_dir = SOPT_GET;
 opt.sopt_level = SOL_SOCKET;
 opt.sopt_name = SO_TYPE;
 opt.sopt_val = &type;
 opt.sopt_valsize = sizeof type;
 opt.sopt_td = ((void*)0);
 error = sogetopt(so, &opt);
 if (error)
  return 0;


 if (family != AF_LOCAL) {
  if (type == SOCK_STREAM)
   proto = IPPROTO_TCP;
  else if (type == SOCK_DGRAM)
   proto = IPPROTO_UDP;
  else
   return 0;
 } else
  proto = 0;

 sip->si_af = family;
 sip->si_proto = proto;
 sip->si_socktype = type;

 return 1;
}
