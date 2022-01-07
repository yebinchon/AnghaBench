
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_softc {int handle; } ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int acpi_video_bind_outputs_subr ;
 int vid_enum_outputs (int ,int ,struct acpi_video_softc*) ;
 int video ;

__attribute__((used)) static void
acpi_video_bind_outputs(struct acpi_video_softc *sc)
{

 ACPI_SERIAL_ASSERT(video);
 vid_enum_outputs(sc->handle, acpi_video_bind_outputs_subr, sc);
}
