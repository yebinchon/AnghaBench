
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int if_mtu; scalar_t__ if_softc; } ;
struct TYPE_4__ {int minlen; int maxlen; } ;
struct TYPE_5__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_pip_frm_len_chkx_t ;
struct TYPE_6__ {int port; } ;
typedef TYPE_3__ cvm_oct_private_t ;


 int CVMX_GMXX_RXX_FRM_MAX (int,int) ;
 int CVMX_GMXX_RXX_JABBER (int,int) ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ;
 int CVMX_PIP_FRM_LEN_CHKX (int) ;
 int EINVAL ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_helper_interface_get_mode (int) ;
 int cvmx_write_csr (int ,int) ;
 int printf (char*,int,int) ;

int cvm_oct_common_change_mtu(struct ifnet *ifp, int new_mtu)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 int interface = INTERFACE(priv->port);
 int index = INDEX(priv->port);
 int vlan_bytes = 4;



 if ((new_mtu + 14 + 4 + vlan_bytes < 64) || (new_mtu + 14 + 4 + vlan_bytes > 65392)) {
  printf("MTU must be between %d and %d.\n", 64-14-4-vlan_bytes, 65392-14-4-vlan_bytes);
  return -EINVAL;
 }
 ifp->if_mtu = new_mtu;

 if ((interface < 2) && (cvmx_helper_interface_get_mode(interface) != CVMX_HELPER_INTERFACE_MODE_SPI)) {
  int max_packet = new_mtu + 14 + 4 + vlan_bytes;

  if (OCTEON_IS_MODEL(OCTEON_CN3XXX) || OCTEON_IS_MODEL(OCTEON_CN58XX)) {

   cvmx_write_csr(CVMX_GMXX_RXX_FRM_MAX(index, interface), max_packet);
  } else {


   cvmx_pip_frm_len_chkx_t frm_len_chk;
   frm_len_chk.u64 = 0;
   frm_len_chk.s.minlen = 64;
   frm_len_chk.s.maxlen = max_packet;
   cvmx_write_csr(CVMX_PIP_FRM_LEN_CHKX(interface), frm_len_chk.u64);
  }


  cvmx_write_csr(CVMX_GMXX_RXX_JABBER(index, interface), (max_packet + 7) & ~7u);
 }
 return 0;
}
