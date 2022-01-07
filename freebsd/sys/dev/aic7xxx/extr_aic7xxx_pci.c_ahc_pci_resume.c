
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct seeprom_descriptor {void* sd_dataout_offset; void* sd_status_offset; void* sd_control_offset; struct ahc_softc* sd_ahc; } ;
struct TYPE_4__ {int csize_lattime; int command; int devconfig; } ;
struct TYPE_5__ {TYPE_1__ pci_softc; } ;
struct ahc_softc {int flags; TYPE_3__* seep_config; TYPE_2__ bus_softc; int dev_softc; } ;
struct TYPE_6__ {int adapter_control; } ;


 int AHC_HAS_TERM_LOGIC ;
 int AIC_POWER_STATE_D0 ;
 int CSIZE_LATTIME ;
 int DEVCONFIG ;
 int PCIR_COMMAND ;
 void* SEECTL ;
 int ahc_acquire_seeprom (struct ahc_softc*,struct seeprom_descriptor*) ;
 int ahc_release_seeprom (struct seeprom_descriptor*) ;
 int ahc_resume (struct ahc_softc*) ;
 int aic_pci_write_config (int ,int ,int ,int) ;
 int aic_power_state_change (struct ahc_softc*,int ) ;
 int configure_termination (struct ahc_softc*,struct seeprom_descriptor*,int ,int *) ;

__attribute__((used)) static int
ahc_pci_resume(struct ahc_softc *ahc)
{

 aic_power_state_change(ahc, AIC_POWER_STATE_D0);







 aic_pci_write_config(ahc->dev_softc, DEVCONFIG,
        ahc->bus_softc.pci_softc.devconfig, 4);
 aic_pci_write_config(ahc->dev_softc, PCIR_COMMAND,
        ahc->bus_softc.pci_softc.command, 1);
 aic_pci_write_config(ahc->dev_softc, CSIZE_LATTIME,
        ahc->bus_softc.pci_softc.csize_lattime,
                 1);
 if ((ahc->flags & AHC_HAS_TERM_LOGIC) != 0) {
  struct seeprom_descriptor sd;
  u_int sxfrctl1;

  sd.sd_ahc = ahc;
  sd.sd_control_offset = SEECTL;
  sd.sd_status_offset = SEECTL;
  sd.sd_dataout_offset = SEECTL;

  ahc_acquire_seeprom(ahc, &sd);
  configure_termination(ahc, &sd,
          ahc->seep_config->adapter_control,
          &sxfrctl1);
  ahc_release_seeprom(&sd);
 }
 return (ahc_resume(ahc));
}
