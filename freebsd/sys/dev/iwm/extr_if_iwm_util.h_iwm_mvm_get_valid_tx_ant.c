
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int valid_tx_ant; } ;
struct iwm_softc {TYPE_2__ sc_fw; TYPE_1__* nvm_data; } ;
struct TYPE_3__ {int valid_tx_ant; } ;



__attribute__((used)) static inline uint8_t
iwm_mvm_get_valid_tx_ant(struct iwm_softc *sc)
{
 return sc->nvm_data && sc->nvm_data->valid_tx_ant ?
        sc->sc_fw.valid_tx_ant & sc->nvm_data->valid_tx_ant :
        sc->sc_fw.valid_tx_ant;
}
