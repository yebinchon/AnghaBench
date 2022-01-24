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
typedef  int u_int32_t ;
typedef  TYPE_2__* sc_p ;
typedef  int /*<<< orphan*/  csa_res ;
struct TYPE_3__ {int hisr; } ;
struct TYPE_4__ {int /*<<< orphan*/  midiintr_arg; int /*<<< orphan*/  (* midiintr ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  pcmintr_arg; int /*<<< orphan*/  (* pcmintr ) (int /*<<< orphan*/ ) ;TYPE_1__ binfo; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_HICR ; 
 int /*<<< orphan*/  BA0_HISR ; 
 int HICR_CHGM ; 
 int HICR_IEV ; 
 int HISR_MIDI ; 
 int HISR_VC0 ; 
 int HISR_VC1 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	sc_p scp = arg;
	csa_res *resp;
	u_int32_t hisr;

	resp = &scp->res;

	/* Is this interrupt for us? */
	hisr = FUNC0(resp, BA0_HISR);
	if ((hisr & 0x7fffffff) == 0) {
		/* Throw an eoi. */
		FUNC1(resp, BA0_HICR, HICR_IEV | HICR_CHGM);
		return;
	}

	/*
	 * Pass the value of HISR via struct csa_bridgeinfo.
	 * The children get access through their ivars.
	 */
	scp->binfo.hisr = hisr;

	/* Invoke the handlers of the children. */
	if ((hisr & (HISR_VC0 | HISR_VC1)) != 0 && scp->pcmintr != NULL) {
		scp->pcmintr(scp->pcmintr_arg);
		hisr &= ~(HISR_VC0 | HISR_VC1);
	}
	if ((hisr & HISR_MIDI) != 0 && scp->midiintr != NULL) {
		scp->midiintr(scp->midiintr_arg);
		hisr &= ~HISR_MIDI;
	}

	/* Throw an eoi. */
	FUNC1(resp, BA0_HICR, HICR_IEV | HICR_CHGM);
}