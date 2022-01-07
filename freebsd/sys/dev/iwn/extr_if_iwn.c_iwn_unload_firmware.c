
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int * fw_fp; } ;


 int FIRMWARE_UNLOAD ;
 int firmware_put (int *,int ) ;

__attribute__((used)) static void
iwn_unload_firmware(struct iwn_softc *sc)
{
 firmware_put(sc->fw_fp, FIRMWARE_UNLOAD);
 sc->fw_fp = ((void*)0);
}
