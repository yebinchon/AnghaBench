
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bnxt_softc {int dummy; } ;


 scalar_t__ BNXT_NO_MORE_WOL_FILTERS ;
 scalar_t__ bnxt_hwrm_get_wol_fltrs (struct bnxt_softc*,scalar_t__) ;
 int bnxt_wol_supported (struct bnxt_softc*) ;

__attribute__((used)) static void
bnxt_get_wol_settings(struct bnxt_softc *softc)
{
 uint16_t wol_handle = 0;

 if (!bnxt_wol_supported(softc))
  return;

 do {
  wol_handle = bnxt_hwrm_get_wol_fltrs(softc, wol_handle);
 } while (wol_handle && wol_handle != BNXT_NO_MORE_WOL_FILTERS);
}
