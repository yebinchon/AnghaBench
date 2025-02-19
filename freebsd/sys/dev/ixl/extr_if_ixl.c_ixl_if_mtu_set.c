
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ixl_vsi {TYPE_1__* shared; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;
struct TYPE_2__ {scalar_t__ isc_max_frame_size; } ;


 int EINVAL ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IOCTL_DEBUGOUT (char*) ;
 scalar_t__ IXL_MAX_FRAME ;
 struct ixl_pf* iflib_get_softc (int ) ;

__attribute__((used)) static int
ixl_if_mtu_set(if_ctx_t ctx, uint32_t mtu)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;

 IOCTL_DEBUGOUT("ioctl: SIOCSIFMTU (Set Interface MTU)");
 if (mtu > IXL_MAX_FRAME - ETHER_HDR_LEN - ETHER_CRC_LEN -
  ETHER_VLAN_ENCAP_LEN)
  return (EINVAL);

 vsi->shared->isc_max_frame_size = mtu + ETHER_HDR_LEN + ETHER_CRC_LEN +
  ETHER_VLAN_ENCAP_LEN;

 return (0);
}
