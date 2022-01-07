
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_h {int dummy; } ;
struct fw_info {struct fw_h fw_h; } ;
struct fw_hdr {int flags; } ;
struct adapter {int flags; int pf; int mbox; scalar_t__ cfcsum; int cfg_file; int dev; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int A_PCIE_FW ;
 int DEV_STATE_ERR ;
 int DEV_STATE_UNINIT ;
 int EINVAL ;
 int EPROTO ;
 int ERESTART ;
 int FW_HDR_FLAGS_RESET_HALT ;
 int FW_OK ;
 int MASTER_MAY ;
 int MASTER_PF ;
 int MPASS (int) ;
 int M_CXGBE ;
 int M_WAITOK ;
 int M_ZERO ;
 int be32toh (int ) ;
 int chip_id (struct adapter*) ;
 int device_printf (int ,char*,int,...) ;
 struct fw_info* find_fw_info (int ) ;
 int free (struct fw_hdr*,int ) ;
 int install_kld_firmware (struct adapter*,struct fw_h*,struct fw_h const*,char*,int*) ;
 struct fw_hdr* malloc (int,int ,int) ;
 int snprintf (int ,int,char*,int) ;
 int t4_fw_bye (struct adapter*,int ) ;
 int t4_fw_hello (struct adapter*,int ,int ,int ,int*) ;
 int t4_get_fw_hdr (struct adapter*,struct fw_hdr*) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int
contact_firmware(struct adapter *sc)
{
 int rc, already = 0;
 enum dev_state state;
 struct fw_info *fw_info;
 struct fw_hdr *card_fw;
 const struct fw_h *drv_fw;

 fw_info = find_fw_info(chip_id(sc));
 if (fw_info == ((void*)0)) {
  device_printf(sc->dev,
      "unable to look up firmware information for chip %d.\n",
      chip_id(sc));
  return (EINVAL);
 }
 drv_fw = &fw_info->fw_h;


 card_fw = malloc(sizeof(*card_fw), M_CXGBE, M_ZERO | M_WAITOK);
restart:
 rc = -t4_get_fw_hdr(sc, card_fw);
 if (rc != 0) {
  device_printf(sc->dev,
      "unable to read firmware header from card's flash: %d\n",
      rc);
  goto done;
 }

 rc = install_kld_firmware(sc, (struct fw_h *)card_fw, drv_fw, ((void*)0),
     &already);
 if (rc == ERESTART)
  goto restart;
 if (rc != 0)
  goto done;

 rc = t4_fw_hello(sc, sc->mbox, sc->mbox, MASTER_MAY, &state);
 if (rc < 0 || state == DEV_STATE_ERR) {
  rc = -rc;
  device_printf(sc->dev,
      "failed to connect to the firmware: %d, %d.  "
      "PCIE_FW 0x%08x\n", rc, state, t4_read_reg(sc, A_PCIE_FW));





  goto done;
 }
 MPASS(be32toh(card_fw->flags) & FW_HDR_FLAGS_RESET_HALT);
 sc->flags |= FW_OK;

 if (rc == sc->pf) {
  sc->flags |= MASTER_PF;
  rc = install_kld_firmware(sc, (struct fw_h *)card_fw, drv_fw,
      ((void*)0), &already);
  if (rc == ERESTART)
   rc = 0;
  else if (rc != 0)
   goto done;
 } else if (state == DEV_STATE_UNINIT) {





  device_printf(sc->dev, "couldn't be master(%d), "
      "device not already initialized either(%d).  "
      "PCIE_FW 0x%08x\n", rc, state, t4_read_reg(sc, A_PCIE_FW));
  rc = EPROTO;
  goto done;
 } else {




  device_printf(sc->dev, "PF%d is master, device state %d.  "
      "PCIE_FW 0x%08x\n", rc, state, t4_read_reg(sc, A_PCIE_FW));
  snprintf(sc->cfg_file, sizeof(sc->cfg_file), "pf%d", rc);
  sc->cfcsum = 0;
  rc = 0;
 }
done:
 if (rc != 0 && sc->flags & FW_OK) {
  t4_fw_bye(sc, sc->mbox);
  sc->flags &= ~FW_OK;
 }
 free(card_fw, M_CXGBE);
 return (rc);
}
