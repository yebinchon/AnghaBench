
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {int clp_mb; } ;


 int MFCFG_RD (struct bxe_softc*,int ) ;
 int MFCFG_WR (struct bxe_softc*,int ,int) ;
 int SHARED_MF_CLP_MAGIC ;
 TYPE_1__ shared_mf_config ;

__attribute__((used)) static void
bxe_clp_reset_done(struct bxe_softc *sc,
                   uint32_t magic_val)
{

    uint32_t val = MFCFG_RD(sc, shared_mf_config.clp_mb);
    MFCFG_WR(sc, shared_mf_config.clp_mb,
              (val & (~SHARED_MF_CLP_MAGIC)) | magic_val);
}
