
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ath_rx_status {int rs_datalen; int rs_tstamp; int rs_phyerr; int rs_antenna; int rs_more; void* rs_rate; void* rs_keyix; void* rs_rssi; int rs_status; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5210_desc {int ds_status1; int ds_status0; } ;
typedef int HAL_STATUS ;


 struct ar5210_desc* AR5210DESC (struct ath_desc*) ;
 int AR_CRCErr ;
 int AR_DataLen ;
 int AR_DecryptCRCErr ;
 int AR_Done ;
 int AR_FIFOOverrun ;
 int AR_FrmRcvOK ;
 int AR_KeyIdx ;
 int AR_KeyIdxValid ;
 int AR_More ;
 int AR_PHYErr ;
 int AR_PHYErr_S ;
 int AR_RXDP ;
 int AR_RcvAntenna ;
 int AR_RcvRate ;
 int AR_RcvSigStrength ;
 int AR_RcvTimestamp ;
 int AR_TSF_L32 ;
 int HAL_EINPROGRESS ;
 int HAL_OK ;
 int HAL_RXERR_CRC ;
 int HAL_RXERR_DECRYPT ;
 int HAL_RXERR_FIFO ;
 int HAL_RXERR_PHY ;
 void* HAL_RXKEYIX_INVALID ;
 void* MS (int,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_STATUS
ar5210ProcRxDesc(struct ath_hal *ah, struct ath_desc *ds,
 uint32_t pa, struct ath_desc *nds, uint64_t tsf,
 struct ath_rx_status *rs)
{
 struct ar5210_desc *ads = AR5210DESC(ds);
 struct ar5210_desc *ands = AR5210DESC(nds);
 uint32_t now, rstamp;

 if ((ads->ds_status1 & AR_Done) == 0)
  return HAL_EINPROGRESS;





 if ((ands->ds_status1 & AR_Done) == 0 && OS_REG_READ(ah, AR_RXDP) == pa)
  return HAL_EINPROGRESS;

 rs->rs_datalen = ads->ds_status0 & AR_DataLen;
 rstamp = MS(ads->ds_status1, AR_RcvTimestamp);




 now = (OS_REG_READ(ah, AR_TSF_L32) >> 10) & 0xffff;
 if ((now & 0x1fff) < rstamp)
  rstamp |= (now - 0x2000) & 0xffff;
 else
  rstamp |= now;

 rs->rs_tstamp = rstamp & 0x7fff;
 rs->rs_status = 0;
 if ((ads->ds_status1 & AR_FrmRcvOK) == 0) {
  if (ads->ds_status1 & AR_CRCErr)
   rs->rs_status |= HAL_RXERR_CRC;
  else if (ads->ds_status1 & AR_DecryptCRCErr)
   rs->rs_status |= HAL_RXERR_DECRYPT;
  else if (ads->ds_status1 & AR_FIFOOverrun)
   rs->rs_status |= HAL_RXERR_FIFO;
  else {
   rs->rs_status |= HAL_RXERR_PHY;
   rs->rs_phyerr =
    (ads->ds_status1 & AR_PHYErr) >> AR_PHYErr_S;
  }
 }

 rs->rs_rssi = MS(ads->ds_status0, AR_RcvSigStrength);
 if (ads->ds_status1 & AR_KeyIdxValid)
  rs->rs_keyix = MS(ads->ds_status1, AR_KeyIdx);
 else
  rs->rs_keyix = HAL_RXKEYIX_INVALID;

 rs->rs_rate = MS(ads->ds_status0, AR_RcvRate);
 rs->rs_antenna = (ads->ds_status0 & AR_RcvAntenna) ? 1 : 0;
 rs->rs_more = (ads->ds_status0 & AR_More) ? 1 : 0;

 return HAL_OK;
}
