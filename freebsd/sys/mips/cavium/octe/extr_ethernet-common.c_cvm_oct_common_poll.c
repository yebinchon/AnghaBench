
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_6__ {scalar_t__ u64; } ;
typedef TYPE_1__ cvmx_helper_link_info_t ;
struct TYPE_7__ {scalar_t__ link_info; int need_link_update; int port; int * miibus; int (* poll ) (struct ifnet*) ;} ;
typedef TYPE_2__ cvm_oct_private_t ;
struct TYPE_8__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 TYPE_1__ cvmx_helper_link_autoconf (int ) ;
 TYPE_1__ cvmx_helper_link_get (int ) ;
 TYPE_3__* cvmx_sysinfo_get () ;
 int stub1 (struct ifnet*) ;

void cvm_oct_common_poll(struct ifnet *ifp)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 cvmx_helper_link_info_t link_info;




 if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM)
  return;




 if (priv->poll != ((void*)0)) {
  priv->poll(ifp);
  return;
 }





 if (priv->miibus != ((void*)0))
  return;




 link_info = cvmx_helper_link_get(priv->port);
 if (link_info.u64 == priv->link_info)
  return;

 link_info = cvmx_helper_link_autoconf(priv->port);
 priv->link_info = link_info.u64;
 priv->need_link_update = 1;
}
