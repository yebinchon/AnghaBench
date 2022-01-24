#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct isp_fc {int /*<<< orphan*/  gdt; scalar_t__ ready; int /*<<< orphan*/  path; TYPE_3__* isp; } ;
struct ac_device_changed {int target; scalar_t__ arrived; int /*<<< orphan*/  port; int /*<<< orphan*/  wwpn; } ;
struct ac_contract {scalar_t__ contract_data; int /*<<< orphan*/  contract_number; } ;
struct TYPE_13__ {struct isp_fc* fc; } ;
struct TYPE_14__ {TYPE_1__ pc; } ;
struct TYPE_15__ {TYPE_2__ isp_osinfo; } ;
typedef  TYPE_3__ ispsoftc_t ;
struct TYPE_16__ {scalar_t__ state; scalar_t__ gone_timer; int /*<<< orphan*/  portid; int /*<<< orphan*/  port_wwn; scalar_t__ is_initiator; scalar_t__ is_target; } ;
typedef  TYPE_4__ fcportdb_t ;
struct TYPE_12__ {TYPE_4__* portdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_CONTRACT ; 
 int /*<<< orphan*/  AC_CONTRACT_DEV_CHG ; 
 TYPE_10__* FUNC0 (TYPE_3__*,int) ; 
 scalar_t__ FC_PORTDB_STATE_NIL ; 
 scalar_t__ FC_PORTDB_STATE_ZOMBIE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  ISP_LOGCONFIG ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  ISP_LOG_SANCFG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int MAX_FC_TARG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct isp_fc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  isp_gdt ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  prom3 ; 
 scalar_t__ time_uptime ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac_contract*) ; 

__attribute__((used)) static void
FUNC8(void *arg, int pending)
{
	struct isp_fc *fc = arg;
	ispsoftc_t *isp = fc->isp;
	int chan = fc - isp->isp_osinfo.pc.fc;
	fcportdb_t *lp;
	struct ac_contract ac;
	struct ac_device_changed *adc;
	int dbidx, more_to_do = 0;

	FUNC1(isp);
	FUNC6(isp, ISP_LOGDEBUG0, "Chan %d GDT timer expired", chan);
	for (dbidx = 0; dbidx < MAX_FC_TARG; dbidx++) {
		lp = &FUNC0(isp, chan)->portdb[dbidx];

		if (lp->state != FC_PORTDB_STATE_ZOMBIE) {
			continue;
		}
		if (lp->gone_timer != 0) {
			lp->gone_timer -= 1;
			more_to_do++;
			continue;
		}
		FUNC6(isp, ISP_LOGCONFIG, prom3, chan, dbidx, lp->portid, "Gone Device Timeout");
		if (lp->is_target) {
			lp->is_target = 0;
			FUNC5(isp, lp, chan, dbidx);
		}
		if (lp->is_initiator) {
			lp->is_initiator = 0;
			ac.contract_number = AC_CONTRACT_DEV_CHG;
			adc = (struct ac_device_changed *) ac.contract_data;
			adc->wwpn = lp->port_wwn;
			adc->port = lp->portid;
			adc->target = dbidx;
			adc->arrived = 0;
			FUNC7(AC_CONTRACT, fc->path, &ac);
		}
		lp->state = FC_PORTDB_STATE_NIL;
	}
	if (fc->ready) {
		if (more_to_do) {
			FUNC4(&fc->gdt, hz, isp_gdt, fc);
		} else {
			FUNC3(&fc->gdt);
			FUNC6(isp, ISP_LOG_SANCFG, "Chan %d Stopping Gone Device Timer @ %lu", chan, (unsigned long) time_uptime);
		}
	}
	FUNC2(isp);
}