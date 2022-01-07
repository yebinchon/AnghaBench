
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int func_obj; scalar_t__ dmae_ready; } ;


 int BXE_SP (struct bxe_softc*,int ) ;
 int BXE_SP_MAPPING (struct bxe_softc*,int ) ;
 int bxe_func_sp_drv ;
 int ecore_init_func_obj (struct bxe_softc*,int *,int ,int ,int ,int ,int *) ;
 int func_afex_rdata ;
 int func_rdata ;

__attribute__((used)) static void
bxe_init_func_obj(struct bxe_softc *sc)
{
    sc->dmae_ready = 0;

    ecore_init_func_obj(sc,
                        &sc->func_obj,
                        BXE_SP(sc, func_rdata),
                        BXE_SP_MAPPING(sc, func_rdata),
                        BXE_SP(sc, func_afex_rdata),
                        BXE_SP_MAPPING(sc, func_afex_rdata),
                        &bxe_func_sp_drv);
}
