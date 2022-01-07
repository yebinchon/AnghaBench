
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int dummy; } ;
typedef int if_ctx_t ;


 scalar_t__ BNXT_PF (struct bnxt_softc*) ;
 int bnxt_hwrm_port_qstats (struct bnxt_softc*) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
bnxt_update_admin_status(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);





 if (BNXT_PF(softc)) {
  bnxt_hwrm_port_qstats(softc);
 }

 return;
}
