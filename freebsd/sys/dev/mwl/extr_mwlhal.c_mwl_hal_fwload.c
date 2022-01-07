
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mwl_hal_priv {scalar_t__ mh_SDRAMSIZE_Addr; scalar_t__* mh_cmdbuf; int mh_dev; } ;
struct mwl_hal {int dummy; } ;
struct firmware {int* data; int datasize; } ;


 int DELAY (int) ;
 int EINVAL ;
 int EIO ;
 int ELOOP ;
 int ENXIO ;
 int ETIMEDOUT ;
 int FIRMWARE_UNLOAD ;
 int FW_CHECK_USECS ;
 int FW_DOWNLOAD_BLOCK_SIZE ;
 int FW_MAX_NUM_CHECKS ;
 int HostCmd_SOFTAP_FWRDY_SIGNATURE ;
 int HostCmd_SOFTAP_MODE ;
 int HostCmd_STA_MODE ;
 int MACREG_A2HRIC_BIT_MASK ;
 int MACREG_REG_A2H_INTERRUPT_CAUSE ;
 int MACREG_REG_A2H_INTERRUPT_CLEAR_SEL ;
 int MACREG_REG_A2H_INTERRUPT_MASK ;
 int MACREG_REG_A2H_INTERRUPT_STATUS_MASK ;
 int MACREG_REG_GEN_PTR ;
 int MACREG_REG_INT_CODE ;
 int MACREG_REG_SCRATCH ;
 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int RD4 (struct mwl_hal_priv*,int ) ;
 int WR4 (struct mwl_hal_priv*,int ,int) ;
 int device_printf (int ,char*,char const*,...) ;
 struct firmware* firmware_get (char const*) ;
 int firmware_put (struct firmware const*,int ) ;
 int mwlFwReset (struct mwl_hal_priv*) ;
 int mwlPokeSdramController (struct mwl_hal_priv*,scalar_t__) ;
 int mwlResetHalState (struct mwl_hal_priv*) ;
 int mwlSendBlock (struct mwl_hal_priv*,int,int const*,int) ;
 int mwlSendBlock2 (struct mwl_hal_priv*,int const*,int) ;
 int mwlTriggerPciCmd (struct mwl_hal_priv*) ;

int
mwl_hal_fwload(struct mwl_hal *mh0, void *fwargs)
{
 struct mwl_hal_priv *mh = MWLPRIV(mh0);
 const char *fwname = "mw88W8363fw";
 const char *fwbootname = "mwlboot";
 const struct firmware *fwboot = ((void*)0);
 const struct firmware *fw;

 uint32_t FwReadySignature = HostCmd_SOFTAP_FWRDY_SIGNATURE;
 uint32_t OpMode = HostCmd_SOFTAP_MODE;
 const uint8_t *fp, *ep;
 const uint8_t *fmdata;
 uint32_t blocksize, nbytes, fmsize;
 int i, error, ntries;

 fw = firmware_get(fwname);
 if (fw == ((void*)0)) {
  device_printf(mh->mh_dev,
      "could not load firmware image %s\n", fwname);
  return ENXIO;
 }
 fmdata = fw->data;
 fmsize = fw->datasize;
 if (fmsize < 4) {
  device_printf(mh->mh_dev, "firmware image %s too small\n",
      fwname);
  error = ENXIO;
  goto bad2;
 }
 if (fmdata[0] == 0x01 && fmdata[1] == 0x00 &&
     fmdata[2] == 0x00 && fmdata[3] == 0x00) {



  fwboot = firmware_get(fwbootname);
  if (fwboot == ((void*)0)) {
   device_printf(mh->mh_dev,
       "could not load firmware image %s\n", fwbootname);
   error = ENXIO;
   goto bad2;
  }
 } else
  fwboot = ((void*)0);

 mwlFwReset(mh);

 WR4(mh, MACREG_REG_A2H_INTERRUPT_CLEAR_SEL, MACREG_A2HRIC_BIT_MASK);
 WR4(mh, MACREG_REG_A2H_INTERRUPT_CAUSE, 0x00);
 WR4(mh, MACREG_REG_A2H_INTERRUPT_MASK, 0x00);
 WR4(mh, MACREG_REG_A2H_INTERRUPT_STATUS_MASK, MACREG_A2HRIC_BIT_MASK);
 if (mh->mh_SDRAMSIZE_Addr != 0) {

  mwlPokeSdramController(mh, mh->mh_SDRAMSIZE_Addr);
 }
 device_printf(mh->mh_dev, "load %s firmware image (%u bytes)\n",
     fwname, fmsize);
 if (fwboot != ((void*)0)) {
  if (!mwlSendBlock(mh, fwboot->datasize, fwboot->data, fwboot->datasize) ||
      !mwlSendBlock(mh, 0, ((void*)0), 0)) {
   error = ETIMEDOUT;
   goto bad;
  }
  DELAY(200*FW_CHECK_USECS);
  if (mh->mh_SDRAMSIZE_Addr != 0) {

   mwlPokeSdramController(mh, mh->mh_SDRAMSIZE_Addr);
  }
  nbytes = ntries = 0;
  for (fp = fmdata, ep = fp + fmsize; fp < ep; ) {
   WR4(mh, MACREG_REG_INT_CODE, 0);
   blocksize = RD4(mh, MACREG_REG_SCRATCH);
   if (blocksize == 0)
    break;
   if (blocksize > 0x00000c00) {
    error = EINVAL;
    goto bad;
   }
   if ((blocksize & 0x1) == 0) {

    fp += nbytes;
    ntries = 0;
   } else {
    if (++ntries > 2) {




     error = ELOOP;
     goto bad;
    }

    blocksize &= ~0x1;
   }
   if (blocksize > ep - fp) {

    blocksize = ep - fp;
   }
   nbytes = blocksize;
   if (!mwlSendBlock2(mh, fp, nbytes)) {
    error = ETIMEDOUT;
    goto bad;
   }
  }
 } else {
  for (fp = fmdata, ep = fp + fmsize; fp < ep;) {
   nbytes = ep - fp;
   if (nbytes > FW_DOWNLOAD_BLOCK_SIZE)
    nbytes = FW_DOWNLOAD_BLOCK_SIZE;
   if (!mwlSendBlock(mh, FW_DOWNLOAD_BLOCK_SIZE, fp, nbytes)) {
    error = EIO;
    goto bad;
   }
   fp += nbytes;
  }
 }

 if (fwboot != ((void*)0))
  firmware_put(fwboot, FIRMWARE_UNLOAD);
 firmware_put(fw, FIRMWARE_UNLOAD);





 mh->mh_cmdbuf[1] = 0;



 if (OpMode != HostCmd_STA_MODE)
  mwlTriggerPciCmd(mh);
 for (i = 0; i < FW_MAX_NUM_CHECKS; i++) {
  WR4(mh, MACREG_REG_GEN_PTR, OpMode);
  DELAY(FW_CHECK_USECS);
  if (RD4(mh, MACREG_REG_INT_CODE) == FwReadySignature) {
   WR4(mh, MACREG_REG_INT_CODE, 0x00);
   return mwlResetHalState(mh);
  }
 }
 return ETIMEDOUT;
bad:
 mwlFwReset(mh);
bad2:

 if (fwboot != ((void*)0))
  firmware_put(fwboot, FIRMWARE_UNLOAD);
 firmware_put(fw, FIRMWARE_UNLOAD);
 return error;
}
