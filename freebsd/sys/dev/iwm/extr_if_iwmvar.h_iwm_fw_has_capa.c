
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled_capa; } ;
struct TYPE_4__ {TYPE_1__ ucode_capa; } ;
struct iwm_softc {TYPE_2__ sc_fw; } ;


 int isset (int ,unsigned int) ;

__attribute__((used)) static inline bool
iwm_fw_has_capa(struct iwm_softc *sc, unsigned int capa)
{
 return isset(sc->sc_fw.ucode_capa.enabled_capa, capa);
}
