
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct hwrm_fw_set_time_input {void* zone; void* millisecond; void* second; void* minute; void* hour; void* day; void* month; void* year; int member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef int req ;


 int HWRM_FW_SET_TIME ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_fw_set_time_input*,int ) ;
 void* htole16 (int ) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_fw_set_time_input*,int) ;

int
bnxt_hwrm_fw_set_time(struct bnxt_softc *softc, uint16_t year, uint8_t month,
    uint8_t day, uint8_t hour, uint8_t minute, uint8_t second,
    uint16_t millisecond, uint16_t zone)
{
 struct hwrm_fw_set_time_input req = {0};

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_FW_SET_TIME);

 req.year = htole16(year);
 req.month = month;
 req.day = day;
 req.hour = hour;
 req.minute = minute;
 req.second = second;
 req.millisecond = htole16(millisecond);
 req.zone = htole16(zone);
 return hwrm_send_message(softc, &req, sizeof(req));
}
