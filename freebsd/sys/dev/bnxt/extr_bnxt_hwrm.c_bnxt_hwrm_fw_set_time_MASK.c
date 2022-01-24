#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct hwrm_fw_set_time_input {void* zone; void* millisecond; void* second; void* minute; void* hour; void* day; void* month; void* year; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_FW_SET_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*,struct hwrm_fw_set_time_input*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnxt_softc*,struct hwrm_fw_set_time_input*,int) ; 

int
FUNC3(struct bnxt_softc *softc, uint16_t year, uint8_t month,
    uint8_t day, uint8_t hour, uint8_t minute, uint8_t second,
    uint16_t millisecond, uint16_t zone)
{
	struct hwrm_fw_set_time_input req = {0};

	FUNC0(softc, &req, HWRM_FW_SET_TIME);

	req.year = FUNC1(year);
	req.month = month;
	req.day = day;
	req.hour = hour;
	req.minute = minute;
	req.second = second;
	req.millisecond = FUNC1(millisecond);
	req.zone = FUNC1(zone);
	return FUNC2(softc, &req, sizeof(req));
}