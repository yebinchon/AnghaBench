
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct sockopt {int sopt_level; int sopt_name; int* sopt_val; int sopt_valsize; void* sopt_dir; } ;
struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int sa_family; int sa_len; } ;
typedef int socklen_t ;
typedef int opt ;
typedef int old ;
typedef scalar_t__ bool_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;




 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EPFNOSUPPORT ;
 scalar_t__ FALSE ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_PORTRANGE ;
 int IPV6_PORTRANGE_LOW ;
 int IP_PORTRANGE ;
 int IP_PORTRANGE_LOW ;
 int M_SONAME ;
 void* SOPT_GET ;
 void* SOPT_SET ;
 scalar_t__ TRUE ;
 int bzero (struct sockopt*,int) ;
 int curthread ;
 int free (struct sockaddr*,int ) ;
 int memset (struct sockaddr*,int ,int ) ;
 int sobind (struct socket*,struct sockaddr*,int ) ;
 int sogetopt (struct socket*,struct sockopt*) ;
 int sosetopt (struct socket*,struct sockopt*) ;
 int stub1 (struct socket*,struct sockaddr**) ;

int
bindresvport(struct socket *so, struct sockaddr *sa)
{
 int old, error, af;
 bool_t freesa = FALSE;
 struct sockaddr_in *sin;



 struct sockopt opt;
 int proto, portrange, portlow;
 u_int16_t *portp;
 socklen_t salen;

 if (sa == ((void*)0)) {
  CURVNET_SET(so->so_vnet);
  error = so->so_proto->pr_usrreqs->pru_sockaddr(so, &sa);
  CURVNET_RESTORE();
  if (error)
   return (error);
  freesa = TRUE;
  af = sa->sa_family;
  salen = sa->sa_len;
  memset(sa, 0, sa->sa_len);
 } else {
  af = sa->sa_family;
  salen = sa->sa_len;
 }

 switch (af) {
 case 129:
  proto = IPPROTO_IP;
  portrange = IP_PORTRANGE;
  portlow = IP_PORTRANGE_LOW;
  sin = (struct sockaddr_in *)sa;
  portp = &sin->sin_port;
  break;
 default:
  return (EPFNOSUPPORT);
 }

 sa->sa_family = af;
 sa->sa_len = salen;

 if (*portp == 0) {
  bzero(&opt, sizeof(opt));
  opt.sopt_dir = SOPT_GET;
  opt.sopt_level = proto;
  opt.sopt_name = portrange;
  opt.sopt_val = &old;
  opt.sopt_valsize = sizeof(old);
  error = sogetopt(so, &opt);
  if (error) {
   goto out;
  }

  opt.sopt_dir = SOPT_SET;
  opt.sopt_val = &portlow;
  error = sosetopt(so, &opt);
  if (error)
   goto out;
 }

 error = sobind(so, sa, curthread);

 if (*portp == 0) {
  if (error) {
   opt.sopt_dir = SOPT_SET;
   opt.sopt_val = &old;
   sosetopt(so, &opt);
  }
 }
out:
 if (freesa)
  free(sa, M_SONAME);

 return (error);
}
