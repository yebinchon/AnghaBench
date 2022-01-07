
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union vxlan_sockaddr {int sa; } ;
struct vxlan_socket_mc_info {int vxlsomc_ifidx; int vxlsomc_gaddr; int vxlsomc_saddr; } ;


 int vxlan_sockaddr_in_any (union vxlan_sockaddr const*) ;
 int vxlan_sockaddr_in_equal (int *,int *) ;

__attribute__((used)) static int
vxlan_sockaddr_mc_info_match(const struct vxlan_socket_mc_info *mc,
    const union vxlan_sockaddr *group, const union vxlan_sockaddr *local,
    int ifidx)
{

 if (!vxlan_sockaddr_in_any(local) &&
     !vxlan_sockaddr_in_equal(&mc->vxlsomc_saddr, &local->sa))
  return (0);
 if (!vxlan_sockaddr_in_equal(&mc->vxlsomc_gaddr, &group->sa))
  return (0);
 if (ifidx != 0 && ifidx != mc->vxlsomc_ifidx)
  return (0);

 return (1);
}
