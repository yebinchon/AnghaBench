
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct ath_rx_status {int rs_datalen; int rs_rssi; int rs_more; int rs_status; scalar_t__ rs_phyerr; void* rs_antenna; void* rs_rate; void* rs_keyix; void* rs_tstamp; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5212_desc {int ds_rxstatus1; int ds_rxstatus0; } ;
struct TYPE_2__ {int ah_hasHwPhyCounters; } ;
typedef int HAL_STATUS ;


 TYPE_1__* AH5212 (struct ath_hal*) ;
 struct ar5212_desc* AR5212DESC (struct ath_desc*) ;
 int AR_CRCErr ;
 int AR_DataLen ;
 int AR_DecryptCRCErr ;
 int AR_Done ;
 int AR_FrmRcvOK ;
 int AR_KeyIdx ;
 int AR_KeyIdxValid ;
 int AR_MichaelErr ;
 int AR_More ;
 int AR_PHYErr ;
 int AR_PHYErrCode ;
 int AR_RXDP ;
 int AR_RcvAntenna ;
 int AR_RcvRate ;
 int AR_RcvSigStrength ;
 int AR_RcvTimestamp ;
 int HAL_EINPROGRESS ;
 int HAL_OK ;
 scalar_t__ HAL_PHYERR_RADAR ;
 int HAL_RXERR_CRC ;
 int HAL_RXERR_DECRYPT ;
 int HAL_RXERR_MIC ;
 int HAL_RXERR_PHY ;
 void* HAL_RXKEYIX_INVALID ;
 void* MS (int,int ) ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 int ar5212AniPhyErrReport (struct ath_hal*,struct ath_rx_status*) ;

HAL_STATUS
ar5212ProcRxDesc(struct ath_hal *ah, struct ath_desc *ds,
 uint32_t pa, struct ath_desc *nds, uint64_t tsf,
 struct ath_rx_status *rs)
{
 struct ar5212_desc *ads = AR5212DESC(ds);
 struct ar5212_desc *ands = AR5212DESC(nds);

 if ((ads->ds_rxstatus1 & AR_Done) == 0)
  return HAL_EINPROGRESS;





 if ((ands->ds_rxstatus1&AR_Done) == 0 && OS_REG_READ(ah, AR_RXDP) == pa)
  return HAL_EINPROGRESS;

 rs->rs_datalen = ads->ds_rxstatus0 & AR_DataLen;
 rs->rs_tstamp = MS(ads->ds_rxstatus1, AR_RcvTimestamp);
 rs->rs_status = 0;

 rs->rs_rssi = MS(ads->ds_rxstatus0, AR_RcvSigStrength);

 if (rs->rs_rssi == -128)
  rs->rs_rssi = 0;
 if (ads->ds_rxstatus1 & AR_KeyIdxValid)
  rs->rs_keyix = MS(ads->ds_rxstatus1, AR_KeyIdx);
 else
  rs->rs_keyix = HAL_RXKEYIX_INVALID;

 rs->rs_rate = MS(ads->ds_rxstatus0, AR_RcvRate);
 rs->rs_antenna = MS(ads->ds_rxstatus0, AR_RcvAntenna);
 rs->rs_more = (ads->ds_rxstatus0 & AR_More) ? 1 : 0;
 if ((ads->ds_rxstatus1 & AR_FrmRcvOK) == 0) {
  if (ads->ds_rxstatus1 & AR_PHYErr) {
   u_int phyerr;

   rs->rs_status |= HAL_RXERR_PHY;
   phyerr = MS(ads->ds_rxstatus1, AR_PHYErrCode);
   rs->rs_phyerr = phyerr;
   if (!AH5212(ah)->ah_hasHwPhyCounters &&
       phyerr != HAL_PHYERR_RADAR)
    ar5212AniPhyErrReport(ah, rs);
  }

  if (ads->ds_rxstatus1 & AR_CRCErr)
   rs->rs_status |= HAL_RXERR_CRC;
  else if (ads->ds_rxstatus1 & AR_DecryptCRCErr)
   rs->rs_status |= HAL_RXERR_DECRYPT;
  else if (ads->ds_rxstatus1 & AR_MichaelErr)
   rs->rs_status |= HAL_RXERR_MIC;
 }
 return HAL_OK;
}
