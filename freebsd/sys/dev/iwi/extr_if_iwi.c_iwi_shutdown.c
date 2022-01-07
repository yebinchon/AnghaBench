
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
typedef int device_t ;


 struct iwi_softc* device_get_softc (int ) ;
 int iwi_put_firmware (struct iwi_softc*) ;
 int iwi_stop (struct iwi_softc*) ;

__attribute__((used)) static int
iwi_shutdown(device_t dev)
{
 struct iwi_softc *sc = device_get_softc(dev);

 iwi_stop(sc);
 iwi_put_firmware(sc);

 return 0;
}
