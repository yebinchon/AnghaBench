
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int wol; } ;
typedef int if_t ;
typedef int if_ctx_t ;


 int EBUSY ;
 int ENOTSUP ;
 int IFCAP_WOL_MAGIC ;
 scalar_t__ bnxt_hwrm_alloc_wol_fltr (struct bnxt_softc*) ;
 scalar_t__ bnxt_hwrm_free_wol_fltr (struct bnxt_softc*) ;
 int bnxt_wol_supported (struct bnxt_softc*) ;
 int if_getcapabilities (int ) ;
 int iflib_get_ifp (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static int
bnxt_wol_config(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 if_t ifp = iflib_get_ifp(ctx);

 if (!softc)
  return -EBUSY;

 if (!bnxt_wol_supported(softc))
  return -ENOTSUP;

 if (if_getcapabilities(ifp) & IFCAP_WOL_MAGIC) {
  if (!softc->wol) {
   if (bnxt_hwrm_alloc_wol_fltr(softc))
    return -EBUSY;
   softc->wol = 1;
  }
 } else {
  if (softc->wol) {
   if (bnxt_hwrm_free_wol_fltr(softc))
    return -EBUSY;
   softc->wol = 0;
  }
 }

 return 0;
}
