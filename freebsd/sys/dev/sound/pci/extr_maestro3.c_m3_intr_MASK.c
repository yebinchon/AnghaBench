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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct sc_rchinfo {int ptr; int bufsize; int prevptr; int /*<<< orphan*/  channel; int /*<<< orphan*/  buffer; scalar_t__ active; } ;
struct sc_pchinfo {int ptr; int bufsize; int prevptr; int /*<<< orphan*/  channel; int /*<<< orphan*/  buffer; scalar_t__ active; } ;
struct sc_info {int pch_cnt; int rch_cnt; struct sc_rchinfo* rch; struct sc_pchinfo* pch; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSP_CONTROL_B ; 
 int /*<<< orphan*/  ASSP_HOST_INT_STATUS ; 
 int ASSP_INT_PENDING ; 
 int DSP2HOST_REQ_TIMER ; 
 int /*<<< orphan*/  HOST_INT_STATUS ; 
 int HV_INT_PENDING ; 
 int /*<<< orphan*/  HW_VOL_COUNTER_MASTER ; 
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int STOP_ASSP_CLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct sc_pchinfo*) ; 
 int FUNC6 (struct sc_rchinfo*) ; 
 int FUNC7 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void *p)
{
	struct sc_info *sc = (struct sc_info *)p;
	struct sc_pchinfo *pch;
	struct sc_rchinfo *rch;
	u_int32_t status, ctl, i, delta;

	FUNC0(INTR, ("m3_intr\n"));

	FUNC1(sc);
	status = FUNC7(sc, HOST_INT_STATUS);
	if (!status) {
		FUNC2(sc);
		return;
	}

	FUNC8(sc, HOST_INT_STATUS, 0xff); /* ack the int? */

	if (status & HV_INT_PENDING) {
		u_int8_t event;

		event = FUNC7(sc, HW_VOL_COUNTER_MASTER);
		switch (event) {
		case 0x99:
			FUNC9(sc->dev);
			break;
		case 0xaa:
			FUNC10(sc->dev, 1, 1);
			break;
		case 0x66:
			FUNC10(sc->dev, -1, -1);
			break;
		case 0x88:
			break;
		default:
			FUNC4(sc->dev, "Unknown HWVOL event\n");
		}
		FUNC8(sc, HW_VOL_COUNTER_MASTER, 0x88);

	}

	if (status & ASSP_INT_PENDING) {
		ctl = FUNC7(sc, ASSP_CONTROL_B);
		if (!(ctl & STOP_ASSP_CLOCK)) {
			ctl = FUNC7(sc, ASSP_HOST_INT_STATUS);
			if (ctl & DSP2HOST_REQ_TIMER) {
				FUNC8(sc, ASSP_HOST_INT_STATUS,
					DSP2HOST_REQ_TIMER);
				/*[[ess_update_ptr]]*/
				goto m3_handle_channel_intr;
			}
		}
	}

	goto m3_handle_channel_intr_out;

m3_handle_channel_intr:
	for (i=0 ; i<sc->pch_cnt ; i++) {
		pch = &sc->pch[i];
		if (pch->active) {
			pch->ptr = FUNC5(pch);
			delta = pch->bufsize + pch->ptr - pch->prevptr;
			delta %= pch->bufsize;
			if (delta < FUNC11(pch->buffer))
				continue;
			pch->prevptr = pch->ptr;
			FUNC2(sc);
			FUNC3(pch->channel);
			FUNC1(sc);
		}
	}
	for (i=0 ; i<sc->rch_cnt ; i++) {
		rch = &sc->rch[i];
		if (rch->active) {
			rch->ptr = FUNC6(rch);
			delta = rch->bufsize + rch->ptr - rch->prevptr;
			delta %= rch->bufsize;
			if (delta < FUNC11(rch->buffer))
				continue;
			rch->prevptr = rch->ptr;
			FUNC2(sc);
			FUNC3(rch->channel);
			FUNC1(sc);
		}
	}

m3_handle_channel_intr_out:
	FUNC2(sc);
}