
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_15__ {int port_bit; } ;
struct TYPE_16__ {void* u64; TYPE_4__ s; } ;
typedef TYPE_5__ cvmx_ipd_sub_port_fcs_t ;
struct TYPE_12__ {int speed; } ;
struct TYPE_17__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_6__ cvmx_helper_link_info_t ;
struct TYPE_13__ {scalar_t__ pcterr; } ;
struct TYPE_18__ {void* u64; TYPE_2__ s; } ;
typedef TYPE_7__ cvmx_gmxx_rxx_int_reg_t ;
struct TYPE_14__ {int pre_chk; } ;
struct TYPE_19__ {void* u64; TYPE_3__ s; } ;
typedef TYPE_8__ cvmx_gmxx_rxx_frm_ctl_t ;
struct TYPE_20__ {unsigned long long port; scalar_t__ link_info; int need_link_update; int * miibus; } ;
typedef TYPE_9__ cvm_oct_private_t ;


 int CVMX_GMXX_RXX_FRM_CTL (int,int) ;
 int CVMX_GMXX_RXX_INT_REG (int,int) ;
 int CVMX_IPD_SUB_PORT_FCS ;
 int DEBUGPRINT (char*,int ) ;
 int INDEX (unsigned long long) ;
 int INTERFACE (unsigned long long) ;
 scalar_t__ USE_10MBPS_PREAMBLE_WORKAROUND ;
 TYPE_6__ cvmx_helper_link_autoconf (unsigned long long) ;
 TYPE_6__ cvmx_helper_link_get (unsigned long long) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;
 int global_register_lock ;
 int if_name (struct ifnet*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void cvm_oct_rgmii_poll(struct ifnet *ifp)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 cvmx_helper_link_info_t link_info;



 mtx_lock_spin(&global_register_lock);

 link_info = cvmx_helper_link_get(priv->port);
 if (link_info.u64 == priv->link_info) {



  if (USE_10MBPS_PREAMBLE_WORKAROUND && (link_info.s.speed == 10)) {



   int interface = INTERFACE(priv->port);
   int index = INDEX(priv->port);
   cvmx_gmxx_rxx_int_reg_t gmxx_rxx_int_reg;
   gmxx_rxx_int_reg.u64 = cvmx_read_csr(CVMX_GMXX_RXX_INT_REG(index, interface));
   if (gmxx_rxx_int_reg.s.pcterr) {






    cvmx_gmxx_rxx_frm_ctl_t gmxx_rxx_frm_ctl;
    cvmx_ipd_sub_port_fcs_t ipd_sub_port_fcs;


    gmxx_rxx_frm_ctl.u64 = cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
    gmxx_rxx_frm_ctl.s.pre_chk = 0;
    cvmx_write_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface), gmxx_rxx_frm_ctl.u64);


    ipd_sub_port_fcs.u64 = cvmx_read_csr(CVMX_IPD_SUB_PORT_FCS);
    ipd_sub_port_fcs.s.port_bit &= 0xffffffffull ^ (1ull<<priv->port);
    cvmx_write_csr(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);


    cvmx_write_csr(CVMX_GMXX_RXX_INT_REG(index, interface), gmxx_rxx_int_reg.u64);
    DEBUGPRINT("%s: Using 10Mbps with software preamble removal\n", if_name(ifp));
   }
  }
  mtx_unlock_spin(&global_register_lock);
  return;
 }





 if (USE_10MBPS_PREAMBLE_WORKAROUND) {

  cvmx_gmxx_rxx_frm_ctl_t gmxx_rxx_frm_ctl;
  cvmx_ipd_sub_port_fcs_t ipd_sub_port_fcs;
  cvmx_gmxx_rxx_int_reg_t gmxx_rxx_int_reg;
  int interface = INTERFACE(priv->port);
  int index = INDEX(priv->port);


  gmxx_rxx_frm_ctl.u64 = cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
  gmxx_rxx_frm_ctl.s.pre_chk = 1;
  cvmx_write_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface), gmxx_rxx_frm_ctl.u64);

  ipd_sub_port_fcs.u64 = cvmx_read_csr(CVMX_IPD_SUB_PORT_FCS);
  ipd_sub_port_fcs.s.port_bit |= 1ull<<priv->port;
  cvmx_write_csr(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);

  gmxx_rxx_int_reg.u64 = cvmx_read_csr(CVMX_GMXX_RXX_INT_REG(index, interface));
  cvmx_write_csr(CVMX_GMXX_RXX_INT_REG(index, interface), gmxx_rxx_int_reg.u64);
 }

 if (priv->miibus == ((void*)0)) {
  link_info = cvmx_helper_link_autoconf(priv->port);
  priv->link_info = link_info.u64;
  priv->need_link_update = 1;
 }
 mtx_unlock_spin(&global_register_lock);
}
