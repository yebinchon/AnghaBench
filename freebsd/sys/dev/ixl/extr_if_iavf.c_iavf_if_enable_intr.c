
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int dummy; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;


 int iavf_enable_intr (struct ixl_vsi*) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static void
iavf_if_enable_intr(if_ctx_t ctx)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &sc->vsi;

 iavf_enable_intr(vsi);
}
