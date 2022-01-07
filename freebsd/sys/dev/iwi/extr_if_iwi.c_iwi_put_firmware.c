
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int fw_boot; int fw_fw; int fw_uc; } ;


 int iwi_put_fw (int *) ;

__attribute__((used)) static void
iwi_put_firmware(struct iwi_softc *sc)
{
 iwi_put_fw(&sc->fw_uc);
 iwi_put_fw(&sc->fw_fw);
 iwi_put_fw(&sc->fw_boot);
}
