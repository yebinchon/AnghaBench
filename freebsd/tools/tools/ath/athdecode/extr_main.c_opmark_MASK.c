#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct athregrec {int reg; int val; } ;
struct TYPE_2__ {int chipnum; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  AH_MARK_ANI_CONTROL 148 
#define  AH_MARK_ANI_POLL 147 
#define  AH_MARK_ANI_RESET 146 
#define  AH_MARK_CHIPRESET 145 
#define  AH_MARK_PERCAL 144 
#define  AH_MARK_RESET 143 
#define  AH_MARK_RESET_DONE 142 
#define  AH_MARK_RESET_LINE 141 
#define  AH_MARK_SETCHANNEL 140 
#define  HAL_ANI_CCK_WEAK_SIGNAL_THR 139 
#define  HAL_ANI_FIRSTEP_LEVEL 138 
#define  HAL_ANI_MODE 137 
#define  HAL_ANI_NOISE_IMMUNITY_LEVEL 136 
#define  HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION 135 
#define  HAL_ANI_PHYERR_RESET 134 
#define  HAL_ANI_PRESENT 133 
#define  HAL_ANI_SPUR_IMMUNITY_LEVEL 132 
#define  HAL_M_HOSTAP 131 
#define  HAL_M_IBSS 130 
#define  HAL_M_MONITOR 129 
#define  HAL_M_STA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 TYPE_1__ state ; 

__attribute__((used)) static const char*
FUNC1(FILE *fd, int i, const struct athregrec *r)
{
	FUNC0(fd, "\n%05d: ", i);
	switch (r->reg) {
	case AH_MARK_RESET:
		FUNC0(fd, "ar%uReset %s", state.chipnum,
			r->val ? "change channel" : "no channel change");
		break;
	case AH_MARK_RESET_LINE:
		FUNC0(fd, "ar%u_reset.c; line %u", state.chipnum, r->val);
		break;
	case AH_MARK_RESET_DONE:
		if (r->val)
			FUNC0(fd, "ar%uReset (done), FAIL, error %u",
				state.chipnum, r->val);
		else
			FUNC0(fd, "ar%uReset (done), OK", state.chipnum);
		break;
	case AH_MARK_CHIPRESET:
		FUNC0(fd, "ar%uChipReset, channel %u MHz", state.chipnum, r->val);
		break;
	case AH_MARK_PERCAL:
		FUNC0(fd, "ar%uPerCalibration, channel %u MHz", state.chipnum, r->val);
		break;
	case AH_MARK_SETCHANNEL:
		FUNC0(fd, "ar%uSetChannel, channel %u MHz", state.chipnum, r->val);
		break;
	case AH_MARK_ANI_RESET:
		switch (r->val) {
		case HAL_M_STA:
			FUNC0(fd, "ar%uAniReset, HAL_M_STA", state.chipnum);
			break;
		case HAL_M_IBSS:
			FUNC0(fd, "ar%uAniReset, HAL_M_IBSS", state.chipnum);
			break;
		case HAL_M_HOSTAP:
			FUNC0(fd, "ar%uAniReset, HAL_M_HOSTAP", state.chipnum);
			break;
		case HAL_M_MONITOR:
			FUNC0(fd, "ar%uAniReset, HAL_M_MONITOR", state.chipnum);
			break;
		default:
			FUNC0(fd, "ar%uAniReset, opmode %u", state.chipnum, r->val);
			break;
		}
		break;
	case AH_MARK_ANI_POLL:
		FUNC0(fd, "ar%uAniPoll, listenTime %u", state.chipnum, r->val);
		break;
	case AH_MARK_ANI_CONTROL:
		switch (r->val) {
		case HAL_ANI_PRESENT:
			FUNC0(fd, "ar%uAniControl, PRESENT", state.chipnum);
			break;
		case HAL_ANI_NOISE_IMMUNITY_LEVEL:
			FUNC0(fd, "ar%uAniControl, NOISE_IMMUNITY", state.chipnum);
			break;
		case HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION:
			FUNC0(fd, "ar%uAniControl, OFDM_WEAK_SIGNAL", state.chipnum);
			break;
		case HAL_ANI_CCK_WEAK_SIGNAL_THR:
			FUNC0(fd, "ar%uAniControl, CCK_WEAK_SIGNAL", state.chipnum);
			break;
		case HAL_ANI_FIRSTEP_LEVEL:
			FUNC0(fd, "ar%uAniControl, FIRSTEP_LEVEL", state.chipnum);
			break;
		case HAL_ANI_SPUR_IMMUNITY_LEVEL:
			FUNC0(fd, "ar%uAniControl, SPUR_IMMUNITY", state.chipnum);
			break;
		case HAL_ANI_MODE:
			FUNC0(fd, "ar%uAniControl, MODE", state.chipnum);
			break;
		case HAL_ANI_PHYERR_RESET:
			FUNC0(fd, "ar%uAniControl, PHYERR_RESET", state.chipnum);
			break;
		default:
			FUNC0(fd, "ar%uAniControl, cmd %u", state.chipnum, r->val);
			break;
		}
		break;
	default:
		FUNC0(fd, "mark #%u value %u/0x%x", r->reg, r->val, r->val);
		break;
	}
	return (NULL);
}