
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int dummy; } ;
struct ixl_pf {int qtag; scalar_t__ iw_enabled; struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;


 int INIT_DEBUGOUT (char*) ;
 struct ixl_pf* iflib_get_softc (int ) ;
 int ixl_disable_rings (struct ixl_pf*,struct ixl_vsi*,int *) ;
 int ixl_disable_rings_intr (struct ixl_vsi*) ;
 scalar_t__ ixl_enable_iwarp ;
 int ixl_iw_pf_stop (struct ixl_pf*) ;

void
ixl_if_stop(if_ctx_t ctx)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;

 INIT_DEBUGOUT("ixl_if_stop: begin\n");
 ixl_disable_rings_intr(vsi);
 ixl_disable_rings(pf, vsi, &pf->qtag);
}
