
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct ath_rx_status {int rs_datalen; int rs_more; void* rs_antenna; void* rs_rate; void* rs_keyix; void* rs_rssi; void* rs_phyerr; int rs_status; void* rs_tstamp; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5211_desc {int ds_status1; int ds_status0; } ;
typedef int HAL_STATUS ;


 struct ar5211_desc* AR5211DESC (struct ath_desc*) ;
 int AR_CRCErr ;
 int AR_DataLen ;
 int AR_DecryptCRCErr ;
 int AR_Done ;
 int AR_FrmRcvOK ;
 int AR_KeyIdx ;
 int AR_KeyIdxValid ;
 int AR_More ;
 int AR_PHYErr ;
 int AR_RXDP ;
 int AR_RcvAntenna ;
 int AR_RcvRate ;
 int AR_RcvSigStrength ;
 int AR_RcvTimestamp ;
 int HAL_EINPROGRESS ;
 int HAL_OK ;
 int HAL_RXERR_CRC ;
 int HAL_RXERR_DECRYPT ;
 int HAL_RXERR_PHY ;
 void* HAL_RXKEYIX_INVALID ;
 void* MS (int,int ) ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;

HAL_STATUS
ar5211ProcRxDesc(struct ath_hal *ah, struct ath_desc *ds,
 uint32_t pa, struct ath_desc *nds, uint64_t tsf,
 struct ath_rx_status *rs)
{
 struct ar5211_desc *ads = AR5211DESC(ds);
 struct ar5211_desc *ands = AR5211DESC(nds);

 if ((ads->ds_status1 & AR_Done) == 0)
  return HAL_EINPROGRESS;





 if ((ands->ds_status1 & AR_Done) == 0 && OS_REG_READ(ah, AR_RXDP) == pa)
  return HAL_EINPROGRESS;

 rs->rs_datalen = ads->ds_status0 & AR_DataLen;
 rs->rs_tstamp = MS(ads->ds_status1, AR_RcvTimestamp);
 rs->rs_status = 0;
 if ((ads->ds_status1 & AR_FrmRcvOK) == 0) {
  if (ads->ds_status1 & AR_CRCErr)
   rs->rs_status |= HAL_RXERR_CRC;
  else if (ads->ds_status1 & AR_DecryptCRCErr)
   rs->rs_status |= HAL_RXERR_DECRYPT;
  else {
   rs->rs_status |= HAL_RXERR_PHY;
   rs->rs_phyerr = MS(ads->ds_status1, AR_PHYErr);
  }
 }

 rs->rs_rssi = MS(ads->ds_status0, AR_RcvSigStrength);
 if (ads->ds_status1 & AR_KeyIdxValid)
  rs->rs_keyix = MS(ads->ds_status1, AR_KeyIdx);
 else
  rs->rs_keyix = HAL_RXKEYIX_INVALID;

 rs->rs_rate = MS(ads->ds_status0, AR_RcvRate);
 rs->rs_antenna = MS(ads->ds_status0, AR_RcvAntenna);
 rs->rs_more = (ads->ds_status0 & AR_More) ? 1 : 0;

 return HAL_OK;
}
