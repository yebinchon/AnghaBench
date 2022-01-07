
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_state_params {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_STOP_TRAFFIC ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ecore_func_send_tx_stop(struct bxe_softc *sc,
           struct ecore_func_state_params *params)
{
 return ecore_sp_post(sc, RAMROD_CMD_ID_COMMON_STOP_TRAFFIC, 0, 0,
        NONE_CONNECTION_TYPE);
}
