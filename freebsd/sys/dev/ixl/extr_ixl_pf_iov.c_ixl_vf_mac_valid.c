
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ixl_vf {int vf_flags; int mac; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ ETHER_IS_MULTICAST (int const*) ;
 int VF_FLAG_SET_MAC_CAP ;
 scalar_t__ cmp_etheraddr (int const*,int ) ;
 scalar_t__ ixl_bcast_mac (int const*) ;
 scalar_t__ ixl_zero_mac (int const*) ;

__attribute__((used)) static int
ixl_vf_mac_valid(struct ixl_vf *vf, const uint8_t *addr)
{

 if (ixl_zero_mac(addr) || ixl_bcast_mac(addr))
  return (EINVAL);






 if (!(vf->vf_flags & VF_FLAG_SET_MAC_CAP) &&
     !(ETHER_IS_MULTICAST(addr) || cmp_etheraddr(addr, vf->mac)))
  return (EPERM);

 return (0);
}
