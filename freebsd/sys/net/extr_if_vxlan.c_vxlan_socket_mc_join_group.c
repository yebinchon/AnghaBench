
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sin6_addr; } ;
struct TYPE_3__ {int sin_addr; } ;
union vxlan_sockaddr {TYPE_2__ in6; TYPE_1__ in4; } ;
struct vxlan_socket {int vxlso_sock; } ;
struct sockopt {int sopt_valsize; struct ipv6_mreq* sopt_val; int sopt_name; int sopt_level; void* sopt_dir; } ;
struct ipv6_mreq {int ipv6mr_interface; int ipv6mr_multiaddr; int imr_interface; int imr_multiaddr; } ;
struct ip_mreq {int ipv6mr_interface; int ipv6mr_multiaddr; int imr_interface; int imr_multiaddr; } ;
typedef int sopt ;
typedef int mreq ;


 int EAFNOSUPPORT ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_JOIN_GROUP ;
 int IP_ADD_MEMBERSHIP ;
 void* SOPT_SET ;
 scalar_t__ VXLAN_SOCKADDR_IS_IPV4 (union vxlan_sockaddr const*) ;
 scalar_t__ VXLAN_SOCKADDR_IS_IPV6 (union vxlan_sockaddr const*) ;
 int bzero (struct sockopt*,int) ;
 int sosetopt (int ,struct sockopt*) ;

__attribute__((used)) static int
vxlan_socket_mc_join_group(struct vxlan_socket *vso,
    const union vxlan_sockaddr *group, const union vxlan_sockaddr *local,
    int *ifidx, union vxlan_sockaddr *source)
{
 struct sockopt sopt;
 int error;

 *source = *local;

 if (VXLAN_SOCKADDR_IS_IPV4(group)) {
  struct ip_mreq mreq;

  mreq.imr_multiaddr = group->in4.sin_addr;
  mreq.imr_interface = local->in4.sin_addr;

  bzero(&sopt, sizeof(sopt));
  sopt.sopt_dir = SOPT_SET;
  sopt.sopt_level = IPPROTO_IP;
  sopt.sopt_name = IP_ADD_MEMBERSHIP;
  sopt.sopt_val = &mreq;
  sopt.sopt_valsize = sizeof(mreq);
  error = sosetopt(vso->vxlso_sock, &sopt);
  if (error)
   return (error);
  source->in4.sin_addr = local->in4.sin_addr;

 } else if (VXLAN_SOCKADDR_IS_IPV6(group)) {
  struct ipv6_mreq mreq;

  mreq.ipv6mr_multiaddr = group->in6.sin6_addr;
  mreq.ipv6mr_interface = *ifidx;

  bzero(&sopt, sizeof(sopt));
  sopt.sopt_dir = SOPT_SET;
  sopt.sopt_level = IPPROTO_IPV6;
  sopt.sopt_name = IPV6_JOIN_GROUP;
  sopt.sopt_val = &mreq;
  sopt.sopt_valsize = sizeof(mreq);
  error = sosetopt(vso->vxlso_sock, &sopt);
  if (error)
   return (error);





 } else
  error = EAFNOSUPPORT;

 return (error);
}
