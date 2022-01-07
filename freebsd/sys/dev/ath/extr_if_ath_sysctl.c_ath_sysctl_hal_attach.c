
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ath_softc {TYPE_2__* sc_ah; int sc_dev; } ;
struct TYPE_3__ {int ah_debug; int ah_ar5416_biasadj; int ah_dma_beacon_response_time; int ah_sw_beacon_response_time; int ah_additional_swba_backoff; int ah_force_full_reset; int ah_serialise_reg_war; } ;
struct TYPE_4__ {TYPE_1__ ah_config; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int*,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

void
ath_sysctl_hal_attach(struct ath_softc *sc)
{
 struct sysctl_oid *tree = device_get_sysctl_tree(sc->sc_dev);
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->sc_dev);
 struct sysctl_oid_list *child = SYSCTL_CHILDREN(tree);

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "hal", CTLFLAG_RD,
     ((void*)0), "Atheros HAL parameters");
 child = SYSCTL_CHILDREN(tree);

 sc->sc_ah->ah_config.ah_debug = 0;
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "debug", CTLFLAG_RW,
     &sc->sc_ah->ah_config.ah_debug, 0, "Atheros HAL debugging printfs");

 sc->sc_ah->ah_config.ah_ar5416_biasadj = 0;
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "ar5416_biasadj", CTLFLAG_RW,
     &sc->sc_ah->ah_config.ah_ar5416_biasadj, 0,
     "Enable 2GHz AR5416 direction sensitivity bias adjust");

 sc->sc_ah->ah_config.ah_dma_beacon_response_time = 2;
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "dma_brt", CTLFLAG_RW,
     &sc->sc_ah->ah_config.ah_dma_beacon_response_time, 0,
     "Atheros HAL DMA beacon response time");

 sc->sc_ah->ah_config.ah_sw_beacon_response_time = 10;
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "sw_brt", CTLFLAG_RW,
     &sc->sc_ah->ah_config.ah_sw_beacon_response_time, 0,
     "Atheros HAL software beacon response time");

 sc->sc_ah->ah_config.ah_additional_swba_backoff = 0;
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "swba_backoff", CTLFLAG_RW,
     &sc->sc_ah->ah_config.ah_additional_swba_backoff, 0,
     "Atheros HAL additional SWBA backoff time");

 sc->sc_ah->ah_config.ah_force_full_reset = 0;
 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "force_full_reset", CTLFLAG_RW,
     &sc->sc_ah->ah_config.ah_force_full_reset, 0,
     "Force full chip reset rather than a warm reset");




 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "serialise_reg_war", CTLFLAG_RW,
     &sc->sc_ah->ah_config.ah_serialise_reg_war, 0,
     "Force register access serialisation");
}
