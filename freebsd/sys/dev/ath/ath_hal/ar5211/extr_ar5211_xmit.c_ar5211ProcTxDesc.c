
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_tx_status {scalar_t__ ts_shortretry; scalar_t__ ts_longretry; scalar_t__ ts_finaltsi; scalar_t__ ts_antenna; void* ts_virtcol; void* ts_rssi; void* ts_rate; int ts_status; void* ts_tstamp; void* ts_seqnum; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct ar5211_desc {int ds_status1; int ds_status0; int ds_ctl0; } ;
typedef int HAL_STATUS ;


 struct ar5211_desc* AR5211DESC (struct ath_desc*) ;
 int AR_AckSigStrength ;
 int AR_Done ;
 int AR_ExcessiveRetries ;
 int AR_FIFOUnderrun ;
 int AR_Filtered ;
 int AR_FrmXmitOK ;
 int AR_LongRetryCnt ;
 int AR_SendTimestamp ;
 int AR_SeqNum ;
 int AR_ShortRetryCnt ;
 int AR_VirtCollCnt ;
 int AR_XmitRate ;
 int HAL_EINPROGRESS ;
 int HAL_OK ;
 int HAL_TXERR_FIFO ;
 int HAL_TXERR_FILT ;
 int HAL_TXERR_XRETRY ;
 void* MS (int,int ) ;

HAL_STATUS
ar5211ProcTxDesc(struct ath_hal *ah,
 struct ath_desc *ds, struct ath_tx_status *ts)
{
 struct ar5211_desc *ads = AR5211DESC(ds);

 if ((ads->ds_status1 & AR_Done) == 0)
  return HAL_EINPROGRESS;


 ts->ts_seqnum = MS(ads->ds_status1, AR_SeqNum);
 ts->ts_tstamp = MS(ads->ds_status0, AR_SendTimestamp);
 ts->ts_status = 0;
 if ((ads->ds_status0 & AR_FrmXmitOK) == 0) {
  if (ads->ds_status0 & AR_ExcessiveRetries)
   ts->ts_status |= HAL_TXERR_XRETRY;
  if (ads->ds_status0 & AR_Filtered)
   ts->ts_status |= HAL_TXERR_FILT;
  if (ads->ds_status0 & AR_FIFOUnderrun)
   ts->ts_status |= HAL_TXERR_FIFO;
 }
 ts->ts_rate = MS(ads->ds_ctl0, AR_XmitRate);
 ts->ts_rssi = MS(ads->ds_status1, AR_AckSigStrength);
 ts->ts_shortretry = MS(ads->ds_status0, AR_ShortRetryCnt);
 ts->ts_longretry = MS(ads->ds_status0, AR_LongRetryCnt);
 ts->ts_virtcol = MS(ads->ds_status0, AR_VirtCollCnt);
 ts->ts_antenna = 0;
 ts->ts_finaltsi = 0;




 if (ts->ts_shortretry > 0)
  ts->ts_shortretry++;
 if (ts->ts_longretry > 0)
  ts->ts_longretry++;

 return HAL_OK;
}
