
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_9__ {int link_up; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;
struct TYPE_8__ {int en; } ;
struct TYPE_11__ {int u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_gmxx_prtx_cfg_t ;
struct TYPE_12__ {int port; int * miibus; } ;
typedef TYPE_5__ cvm_oct_private_t ;
struct TYPE_13__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 TYPE_3__ cvmx_helper_link_get (int ) ;
 int cvmx_read_csr (int ) ;
 TYPE_6__* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,int ) ;
 int if_link_state_change (struct ifnet*,int ) ;

int cvm_oct_common_open(struct ifnet *ifp)
{
 cvmx_gmxx_prtx_cfg_t gmx_cfg;
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 int interface = INTERFACE(priv->port);
 int index = INDEX(priv->port);
 cvmx_helper_link_info_t link_info;

 gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
 gmx_cfg.s.en = 1;
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);




        if (cvmx_sysinfo_get()->board_type != CVMX_BOARD_TYPE_SIM && priv->miibus == ((void*)0)) {
             link_info = cvmx_helper_link_get(priv->port);
             if (!link_info.s.link_up)
  if_link_state_change(ifp, LINK_STATE_DOWN);
      else
  if_link_state_change(ifp, LINK_STATE_UP);
        }

 return 0;
}
