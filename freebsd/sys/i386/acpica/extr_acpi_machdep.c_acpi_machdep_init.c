
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_softc {int acpi_sysctl_tree; int acpi_sysctl_ctx; } ;
typedef int device_t ;
struct TYPE_2__ {int SciInterrupt; } ;


 scalar_t__ ACPI_INTR_PIC ;
 TYPE_1__ AcpiGbl_FADT ;
 int BUS_CONFIG_INTR (int ,int ,int ,int ) ;
 int CTLFLAG_RW ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_LEVEL ;
 int OID_AUTO ;
 int SYSCTL_ADD_UINT (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int acpi_SetIntrModel (scalar_t__) ;
 int acpi_apm_init (struct acpi_softc*) ;
 int acpi_install_wakeup_handler (struct acpi_softc*) ;
 int acpi_reset_video ;
 struct acpi_softc* device_get_softc (int ) ;
 scalar_t__ intr_model ;

int
acpi_machdep_init(device_t dev)
{
 struct acpi_softc *sc;

 sc = device_get_softc(dev);

 acpi_apm_init(sc);
 acpi_install_wakeup_handler(sc);

 if (intr_model == ACPI_INTR_PIC)
  BUS_CONFIG_INTR(dev, AcpiGbl_FADT.SciInterrupt,
      INTR_TRIGGER_LEVEL, INTR_POLARITY_LOW);
 else
  acpi_SetIntrModel(intr_model);

 SYSCTL_ADD_UINT(&sc->acpi_sysctl_ctx,
     SYSCTL_CHILDREN(sc->acpi_sysctl_tree), OID_AUTO,
     "reset_video", CTLFLAG_RW, &acpi_reset_video, 0,
     "Call the VESA reset BIOS vector on the resume path");

 return (0);
}
