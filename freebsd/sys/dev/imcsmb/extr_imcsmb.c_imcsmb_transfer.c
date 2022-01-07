
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
struct imcsmb_softc {TYPE_1__* regs; int imcsmb_pci; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int smb_cntl; int smb_stat; int smb_cmd; } ;


 int DELAY (int) ;
 int IMCSMB_CMD_TRIGGER_BIT ;
 int IMCSMB_CMD_WORD_ACCESS ;
 int IMCSMB_CMD_WRITE_BIT ;
 int IMCSMB_CNTL_CLK_OVERRIDE ;
 int IMCSMB_CNTL_DTI_MASK ;
 int IMCSMB_CNTL_POLL_EN ;
 int IMCSMB_CNTL_WRITE_DISABLE_BIT ;
 int IMCSMB_STATUS_BUSY_BIT ;
 int IMCSMB_STATUS_BUS_ERROR_BIT ;
 int IMCSMB_STATUS_READ_DATA_VALID ;
 int IMCSMB_STATUS_WRITE_DATA_DONE ;
 int SMB_ENOACK ;
 int SMB_ENOERR ;
 int SMB_ETIMEOUT ;
 struct imcsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int htobe16 (int) ;
 int hz ;
 int pause (char*,int) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
imcsmb_transfer(device_t dev, u_char slave, char cmd, void *data, int word_op,
    int write_op)
{
 struct imcsmb_softc *sc;
 int i;
 int rc;
 uint32_t cmd_val;
 uint32_t cntl_val;
 uint32_t orig_cntl_val;
 uint32_t stat_val;
 uint16_t *word;
 uint16_t lword;
 uint8_t *byte;
 uint8_t lbyte;

 sc = device_get_softc(dev);
 byte = data;
 word = data;
 lbyte = *byte;
 lword = *word;




 orig_cntl_val = pci_read_config(sc->imcsmb_pci,
     sc->regs->smb_cntl, 4);
 cntl_val = orig_cntl_val;
 cntl_val &= ~IMCSMB_CNTL_DTI_MASK;
 cntl_val |= ((uint32_t) slave & 0xf0) << 24;


 cntl_val |= IMCSMB_CNTL_CLK_OVERRIDE;




 cntl_val &= ~IMCSMB_CNTL_WRITE_DISABLE_BIT;


 cntl_val &= ~IMCSMB_CNTL_POLL_EN;
 cmd_val = IMCSMB_CMD_TRIGGER_BIT;


 if (word_op) {
  cmd_val |= IMCSMB_CMD_WORD_ACCESS;
 }


 if (write_op) {
  cmd_val |= IMCSMB_CMD_WRITE_BIT;
 }


 cmd_val |= (uint32_t) ((slave & 0xe) << 23);




 cmd_val |= (uint32_t) ((uint8_t) cmd << 16);


 if (write_op) {
  if (word_op) {
   lword = htobe16(lword);
  } else {



   lword = (uint16_t) (lbyte & 0xff);
  }
  cmd_val |= lword;
 }




 pci_write_config(sc->imcsmb_pci, sc->regs->smb_cntl, cntl_val, 4);






 for (i = 4; i != 0; i--) {
  stat_val = pci_read_config(sc->imcsmb_pci, sc->regs->smb_stat,
      4);
  if ((stat_val & IMCSMB_STATUS_BUSY_BIT) == 0) {
   break;
  }
  pause("imcsmb", 10 * hz / 1000);
 }

 if (i == 0) {
  device_printf(sc->dev,
      "transfer: timeout waiting for device to settle\n");
 }




 pci_write_config(sc->imcsmb_pci, sc->regs->smb_cmd, cmd_val, 4);




 for (i = 35000; i != 0; i -= 10)
 {
  DELAY(10);
  stat_val = pci_read_config(sc->imcsmb_pci, sc->regs->smb_stat,
      4);
  if (write_op) {
   if ((stat_val & IMCSMB_STATUS_WRITE_DATA_DONE) != 0) {
    break;
   }
  } else {
   if ((stat_val & IMCSMB_STATUS_READ_DATA_VALID) != 0) {
    break;
   }
  }
 }
 if (i == 0) {
  rc = SMB_ETIMEOUT;
  device_printf(dev, "transfer timeout\n");
  goto out;
 }





 if ((stat_val & IMCSMB_STATUS_BUS_ERROR_BIT) != 0) {




  if ((slave & 0xf0) != 0x60) {
   rc = SMB_ENOACK;
   goto out;
  }
 }


 if (write_op == 0) {
  if (word_op) {



   lword = (uint16_t) (stat_val & 0xffff);
   lword = htobe16(lword);
   *word = lword;
  } else {

   lbyte = (uint8_t) (stat_val & 0xff);
   *byte = lbyte;
  }
 }


 rc = SMB_ENOERR;

out:

 pci_write_config(sc->imcsmb_pci, sc->regs->smb_cntl, orig_cntl_val, 4);
 return (rc);
}
