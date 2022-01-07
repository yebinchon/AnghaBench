
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;
typedef int device_t ;


 struct wpi_softc* device_get_softc (int ) ;
 int wpi_stop (struct wpi_softc*) ;

__attribute__((used)) static int
wpi_shutdown(device_t dev)
{
 struct wpi_softc *sc = device_get_softc(dev);

 wpi_stop(sc);
 return 0;
}
