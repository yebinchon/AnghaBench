
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_softc {int handle; } ;
typedef int device_t ;


 int DOS_SWITCH_BY_BIOS ;
 struct acpi_video_softc* device_get_softc (int ) ;
 int vid_set_switch_policy (int ,int ) ;

__attribute__((used)) static int
acpi_video_shutdown(device_t dev)
{
 struct acpi_video_softc *sc;

 sc = device_get_softc(dev);
 vid_set_switch_policy(sc->handle, DOS_SWITCH_BY_BIOS);

 return (0);
}
