#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct agg_info {scalar_t__ curpwr; int playchns; int active; int /*<<< orphan*/  dev; TYPE_1__ rch; TYPE_2__* pch; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_info*,int /*<<< orphan*/ ,int,int) ; 
 int HOSTINT_STAT_DSOUND ; 
 int HOSTINT_STAT_HWVOL ; 
#define  HWVOL_DOWN 130 
 int HWVOL_MUTE ; 
#define  HWVOL_NOP 129 
#define  HWVOL_UP 128 
 scalar_t__ PCI_POWERSTATE_D1 ; 
 int /*<<< orphan*/  PORT_HOSTINT_STAT ; 
 int /*<<< orphan*/  PORT_HWVOL_MASTER ; 
 int /*<<< orphan*/  PORT_INT_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(void *sc)
{
	struct agg_info* ess = sc;
	register u_int8_t status;
	int i;
	u_int m;

	status = FUNC0(ess, PORT_HOSTINT_STAT, 1);
	if (!status)
		return;

	/* Acknowledge intr. */
	FUNC1(ess, PORT_HOSTINT_STAT, status, 1);

	if (status & HOSTINT_STAT_DSOUND) {
#ifdef AGG_JITTER_CORRECTION
		agg_lock(ess);
#endif
		if (ess->curpwr <= PCI_POWERSTATE_D1) {
			FUNC1(ess, PORT_INT_STAT, 1, 2);
#ifdef AGG_JITTER_CORRECTION
			for (i = 0, m = 1; i < ess->playchns; i++, m <<= 1) {
				if (ess->active & m)
					suppress_jitter(ess->pch + i);
			}
			if (ess->active & m)
				suppress_rec_jitter(&ess->rch);
			agg_unlock(ess);
#endif
			for (i = 0, m = 1; i < ess->playchns; i++, m <<= 1) {
				if (ess->active & m) {
					if (ess->curpwr <= PCI_POWERSTATE_D1)
						FUNC4(ess->pch[i].channel);
					else {
						m = 0;
						break;
					}
				}
			}
			if ((ess->active & m)
			    && ess->curpwr <= PCI_POWERSTATE_D1)
				FUNC4(ess->rch.channel);
		}
#ifdef AGG_JITTER_CORRECTION
		else
			agg_unlock(ess);
#endif
	}

	if (status & HOSTINT_STAT_HWVOL) {
		register u_int8_t event;

		FUNC2(ess);
		event = FUNC0(ess, PORT_HWVOL_MASTER, 1);
		FUNC1(ess, PORT_HWVOL_MASTER, HWVOL_NOP, 1);
		FUNC3(ess);

		switch (event) {
		case HWVOL_UP:
			FUNC8(ess->dev, 1, 1);
			break;
		case HWVOL_DOWN:
			FUNC8(ess->dev, -1, -1);
			break;
		case HWVOL_NOP:
			break;
		default:
			if (event & HWVOL_MUTE) {
				FUNC7(ess->dev);
				break;
			}
			FUNC6(ess->dev,
				      "%s: unknown HWVOL event 0x%x\n",
				      FUNC5(ess->dev), event);
		}
	}
}