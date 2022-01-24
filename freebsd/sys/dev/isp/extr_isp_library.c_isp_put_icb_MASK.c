#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_4__ {int /*<<< orphan*/  icb_zfwoptions; int /*<<< orphan*/  icb_idelaytimer; int /*<<< orphan*/  icb_racctimer; int /*<<< orphan*/  icb_xfwoptions; int /*<<< orphan*/  icb_reserved1; int /*<<< orphan*/  icb_lunetimeout; int /*<<< orphan*/  icb_icnt; int /*<<< orphan*/  icb_ccnt; int /*<<< orphan*/  icb_lunenables; int /*<<< orphan*/ * icb_respaddr; int /*<<< orphan*/ * icb_rqstaddr; int /*<<< orphan*/  icb_rsltqlen; int /*<<< orphan*/  icb_rqstqlen; int /*<<< orphan*/  icb_rspnsin; int /*<<< orphan*/  icb_rqstout; int /*<<< orphan*/ * icb_nodename; int /*<<< orphan*/  icb_logintime; int /*<<< orphan*/  icb_iqdevtype; int /*<<< orphan*/  icb_hardaddr; int /*<<< orphan*/ * icb_portname; int /*<<< orphan*/  icb_retry_delay; int /*<<< orphan*/  icb_retry_count; int /*<<< orphan*/  icb_execthrottle; int /*<<< orphan*/  icb_maxalloc; int /*<<< orphan*/  icb_maxfrmlen; int /*<<< orphan*/  icb_fwoptions; int /*<<< orphan*/  icb_reserved0; int /*<<< orphan*/  icb_version; } ;
typedef  TYPE_1__ isp_icb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(ispsoftc_t *isp, isp_icb_t *src, isp_icb_t *dst)
{
	int i;
	if (FUNC2(isp)) {
		FUNC1(isp, src->icb_version, &dst->icb_reserved0);
		FUNC1(isp, src->icb_reserved0, &dst->icb_version);
	} else {
		FUNC1(isp, src->icb_version, &dst->icb_version);
		FUNC1(isp, src->icb_reserved0, &dst->icb_reserved0);
	}
	FUNC0(isp, src->icb_fwoptions, &dst->icb_fwoptions);
	FUNC0(isp, src->icb_maxfrmlen, &dst->icb_maxfrmlen);
	FUNC0(isp, src->icb_maxalloc, &dst->icb_maxalloc);
	FUNC0(isp, src->icb_execthrottle, &dst->icb_execthrottle);
	if (FUNC2(isp)) {
		FUNC1(isp, src->icb_retry_count, &dst->icb_retry_delay);
		FUNC1(isp, src->icb_retry_delay, &dst->icb_retry_count);
	} else {
		FUNC1(isp, src->icb_retry_count, &dst->icb_retry_count);
		FUNC1(isp, src->icb_retry_delay, &dst->icb_retry_delay);
	}
	for (i = 0; i < 8; i++) {
		FUNC1(isp, src->icb_portname[i], &dst->icb_portname[i]);
	}
	FUNC0(isp, src->icb_hardaddr, &dst->icb_hardaddr);
	if (FUNC2(isp)) {
		FUNC1(isp, src->icb_iqdevtype, &dst->icb_logintime);
		FUNC1(isp, src->icb_logintime, &dst->icb_iqdevtype);
	} else {
		FUNC1(isp, src->icb_iqdevtype, &dst->icb_iqdevtype);
		FUNC1(isp, src->icb_logintime, &dst->icb_logintime);
	}
	for (i = 0; i < 8; i++) {
		FUNC1(isp, src->icb_nodename[i], &dst->icb_nodename[i]);
	}
	FUNC0(isp, src->icb_rqstout, &dst->icb_rqstout);
	FUNC0(isp, src->icb_rspnsin, &dst->icb_rspnsin);
	FUNC0(isp, src->icb_rqstqlen, &dst->icb_rqstqlen);
	FUNC0(isp, src->icb_rsltqlen, &dst->icb_rsltqlen);
	for (i = 0; i < 4; i++) {
		FUNC0(isp, src->icb_rqstaddr[i], &dst->icb_rqstaddr[i]);
	}
	for (i = 0; i < 4; i++) {
		FUNC0(isp, src->icb_respaddr[i], &dst->icb_respaddr[i]);
	}
	FUNC0(isp, src->icb_lunenables, &dst->icb_lunenables);
	if (FUNC2(isp)) {
		FUNC1(isp, src->icb_ccnt, &dst->icb_icnt);
		FUNC1(isp, src->icb_icnt, &dst->icb_ccnt);
	} else {
		FUNC1(isp, src->icb_ccnt, &dst->icb_ccnt);
		FUNC1(isp, src->icb_icnt, &dst->icb_icnt);
	}
	FUNC0(isp, src->icb_lunetimeout, &dst->icb_lunetimeout);
	FUNC0(isp, src->icb_reserved1, &dst->icb_reserved1);
	FUNC0(isp, src->icb_xfwoptions, &dst->icb_xfwoptions);
	if (FUNC2(isp)) {
		FUNC1(isp, src->icb_racctimer, &dst->icb_idelaytimer);
		FUNC1(isp, src->icb_idelaytimer, &dst->icb_racctimer);
	} else {
		FUNC1(isp, src->icb_racctimer, &dst->icb_racctimer);
		FUNC1(isp, src->icb_idelaytimer, &dst->icb_idelaytimer);
	}
	FUNC0(isp, src->icb_zfwoptions, &dst->icb_zfwoptions);
}