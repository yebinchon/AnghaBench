
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int * fw_fp; } ;


 int FIRMWARE_UNLOAD ;
 int firmware_put (int *,int ) ;

__attribute__((used)) static void
wpi_unload_firmware(struct wpi_softc *sc)
{
 if (sc->fw_fp != ((void*)0)) {
  firmware_put(sc->fw_fp, FIRMWARE_UNLOAD);
  sc->fw_fp = ((void*)0);
 }
}
