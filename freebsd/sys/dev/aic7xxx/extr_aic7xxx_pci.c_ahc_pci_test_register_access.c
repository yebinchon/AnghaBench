
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct ahc_softc {int dev_softc; int flags; } ;


 int AHC_NO_BIOS_INIT ;
 int CHIPRST ;
 int CLRINT ;
 int CLRPARERR ;
 int EIO ;
 int FAILDIS ;
 int HCNTRL ;
 int PAUSE ;
 int PCIM_CMD_SERRESPEN ;
 scalar_t__ PCIR_COMMAND ;
 scalar_t__ PCIR_STATUS ;
 int PERRORDIS ;
 int SCBPTR ;
 int SCB_BASE ;
 int SEQCTL ;
 int STA ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_inl (struct ahc_softc*,int ) ;
 scalar_t__ ahc_is_paused (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_outl (struct ahc_softc*,int ,int) ;
 int aic_pci_read_config (int ,scalar_t__,int) ;
 int aic_pci_write_config (int ,scalar_t__,int,int) ;

int
ahc_pci_test_register_access(struct ahc_softc *ahc)
{
 int error;
 u_int status1;
 uint32_t cmd;
 uint8_t hcntrl;

 error = EIO;





 cmd = aic_pci_read_config(ahc->dev_softc, PCIR_COMMAND, 2);
 aic_pci_write_config(ahc->dev_softc, PCIR_COMMAND,
        cmd & ~PCIM_CMD_SERRESPEN, 2);
 hcntrl = ahc_inb(ahc, HCNTRL);

 if (hcntrl == 0xFF)
  goto fail;

 if ((hcntrl & CHIPRST) != 0) {





  ahc->flags |= AHC_NO_BIOS_INIT;
 }
 hcntrl &= ~CHIPRST;
 ahc_outb(ahc, HCNTRL, hcntrl|PAUSE);
 while (ahc_is_paused(ahc) == 0)
  ;


 status1 = aic_pci_read_config(ahc->dev_softc,
          PCIR_STATUS + 1, 1);
 aic_pci_write_config(ahc->dev_softc, PCIR_STATUS + 1,
        status1, 1);
 ahc_outb(ahc, CLRINT, CLRPARERR);

 ahc_outb(ahc, SEQCTL, PERRORDIS);
 ahc_outb(ahc, SCBPTR, 0);
 ahc_outl(ahc, SCB_BASE, 0x5aa555aa);
 if (ahc_inl(ahc, SCB_BASE) != 0x5aa555aa)
  goto fail;

 status1 = aic_pci_read_config(ahc->dev_softc,
          PCIR_STATUS + 1, 1);
 if ((status1 & STA) != 0)
  goto fail;

 error = 0;

fail:

 status1 = aic_pci_read_config(ahc->dev_softc,
          PCIR_STATUS + 1, 1);
 aic_pci_write_config(ahc->dev_softc, PCIR_STATUS + 1,
        status1, 1);
 ahc_outb(ahc, CLRINT, CLRPARERR);
 ahc_outb(ahc, SEQCTL, PERRORDIS|FAILDIS);
 aic_pci_write_config(ahc->dev_softc, PCIR_COMMAND, cmd, 2);
 return (error);
}
