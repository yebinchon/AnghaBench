
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_4__ {scalar_t__ en; } ;
struct TYPE_5__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_gmxx_prtx_cfg_t ;
struct TYPE_6__ {int port; } ;
typedef TYPE_3__ cvm_oct_private_t ;


 int CVMX_GMXX_PRTX_CFG (int,int) ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

int cvm_oct_common_stop(struct ifnet *ifp)
{
 cvmx_gmxx_prtx_cfg_t gmx_cfg;
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 int interface = INTERFACE(priv->port);
 int index = INDEX(priv->port);

 gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
 gmx_cfg.s.en = 0;
 cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);
 return 0;
}
