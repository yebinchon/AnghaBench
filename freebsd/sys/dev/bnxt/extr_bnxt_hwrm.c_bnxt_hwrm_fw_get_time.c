
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct hwrm_fw_get_time_output {int zone; int millisecond; int second; int minute; int hour; int day; int month; int year; } ;
struct hwrm_fw_get_time_input {int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int HWRM_FW_GET_TIME ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_fw_get_time_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_fw_get_time_input*,int ) ;
 int le16toh (int ) ;

int
bnxt_hwrm_fw_get_time(struct bnxt_softc *softc, uint16_t *year, uint8_t *month,
    uint8_t *day, uint8_t *hour, uint8_t *minute, uint8_t *second,
    uint16_t *millisecond, uint16_t *zone)
{
 struct hwrm_fw_get_time_input req = {0};
 struct hwrm_fw_get_time_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_FW_GET_TIME);

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 if (rc)
  goto exit;

 if (year)
  *year = le16toh(resp->year);
 if (month)
  *month = resp->month;
 if (day)
  *day = resp->day;
 if (hour)
  *hour = resp->hour;
 if (minute)
  *minute = resp->minute;
 if (second)
  *second = resp->second;
 if (millisecond)
  *millisecond = le16toh(resp->millisecond);
 if (zone)
  *zone = le16toh(resp->zone);

exit:
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
