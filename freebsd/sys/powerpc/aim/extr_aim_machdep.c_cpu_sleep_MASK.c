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
typedef  int /*<<< orphan*/  u_quad_t ;
struct thread {struct thread* td_pcb; } ;
typedef  int register_t ;
typedef  struct thread jmp_buf ;

/* Variables and functions */
 int HID0_DOZE ; 
 int HID0_NAP ; 
 int HID0_SLEEP ; 
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,struct thread*) ; 
 int PSL_POW ; 
 int /*<<< orphan*/  SPR_HID0 ; 
 int /*<<< orphan*/  SPR_SPRG0 ; 
 int /*<<< orphan*/  SPR_SPRG1 ; 
 int /*<<< orphan*/  SPR_SPRG2 ; 
 int /*<<< orphan*/  SPR_SPRG3 ; 
 int /*<<< orphan*/  SPR_SRR0 ; 
 int /*<<< orphan*/  SPR_SRR1 ; 
 int /*<<< orphan*/  ap_pcpu ; 
 struct thread* curpcb ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  fputhread ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcpup ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct thread* restore ; 
 int /*<<< orphan*/  FUNC14 (struct thread*) ; 
 int /*<<< orphan*/  FUNC15 (struct thread*) ; 
 scalar_t__ FUNC16 (struct thread) ; 
 int /*<<< orphan*/  vecthread ; 

void
FUNC17()
{
	static u_quad_t timebase = 0;
	static register_t sprgs[4];
	static register_t srrs[2];

	jmp_buf resetjb;
	struct thread *fputd;
	struct thread *vectd;
	register_t hid0;
	register_t msr;
	register_t saved_msr;

	ap_pcpu = pcpup;

	FUNC1(restore, &resetjb);

	saved_msr = FUNC6();
	fputd = FUNC0(fputhread);
	vectd = FUNC0(vecthread);
	if (fputd != NULL)
		FUNC14(fputd);
	if (vectd != NULL)
		FUNC15(vectd);
	if (FUNC16(resetjb) == 0) {
		sprgs[0] = FUNC7(SPR_SPRG0);
		sprgs[1] = FUNC7(SPR_SPRG1);
		sprgs[2] = FUNC7(SPR_SPRG2);
		sprgs[3] = FUNC7(SPR_SPRG3);
		srrs[0] = FUNC7(SPR_SRR0);
		srrs[1] = FUNC7(SPR_SRR1);
		timebase = FUNC8();
		FUNC13();
		FUNC4();
		hid0 = FUNC7(SPR_HID0);
		hid0 = (hid0 & ~(HID0_DOZE | HID0_NAP)) | HID0_SLEEP;
		FUNC13();
		FUNC5();
		msr = FUNC6() | PSL_POW;
		FUNC10(SPR_HID0, hid0);
		FUNC13();

		while (1)
			FUNC9(msr);
	}
	FUNC11(timebase, 0);
	FUNC1(curthread, curthread);
	FUNC1(curpcb, curthread->td_pcb);
	FUNC12(curthread);
	FUNC13();
	FUNC10(SPR_SPRG0, sprgs[0]);
	FUNC10(SPR_SPRG1, sprgs[1]);
	FUNC10(SPR_SPRG2, sprgs[2]);
	FUNC10(SPR_SPRG3, sprgs[3]);
	FUNC10(SPR_SRR0, srrs[0]);
	FUNC10(SPR_SRR1, srrs[1]);
	FUNC9(saved_msr);
	if (fputd == curthread)
		FUNC2(curthread);
	if (vectd == curthread)
		FUNC3(curthread);
	FUNC13();
}