
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int dummy; } ;
typedef int if_ctx_t ;


 int bnxt_get_wol_settings (struct bnxt_softc*) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static int
bnxt_resume(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);

 bnxt_get_wol_settings(softc);
 return 0;
}
