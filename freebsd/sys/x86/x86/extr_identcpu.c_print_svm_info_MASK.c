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
typedef  int uint64_t ;
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_VM_CR ; 
 int VM_CR_SVMDIS ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	u_int features, regs[4];
	uint64_t msr;
	int comma;

	FUNC1("\n  SVM: ");
	FUNC0(0x8000000A, regs);
	features = regs[3];

	msr = FUNC2(MSR_VM_CR);
	if ((msr & VM_CR_SVMDIS) == VM_CR_SVMDIS)
		FUNC1("(disabled in BIOS) ");

	if (!bootverbose) {
		comma = 0;
		if (features & (1 << 0)) {
			FUNC1("%sNP", comma ? "," : "");
                        comma = 1; 
		}
		if (features & (1 << 3)) {
			FUNC1("%sNRIP", comma ? "," : "");
                        comma = 1; 
		}
		if (features & (1 << 5)) {
			FUNC1("%sVClean", comma ? "," : "");
                        comma = 1; 
		}
		if (features & (1 << 6)) {
			FUNC1("%sAFlush", comma ? "," : "");
                        comma = 1; 
		}
		if (features & (1 << 7)) {
			FUNC1("%sDAssist", comma ? "," : "");
                        comma = 1; 
		}
		FUNC1("%sNAsids=%d", comma ? "," : "", regs[1]);
		return;
	}

	FUNC1("Features=0x%b", features,
	       "\020"
	       "\001NP"			/* Nested paging */
	       "\002LbrVirt"		/* LBR virtualization */
	       "\003SVML"		/* SVM lock */
	       "\004NRIPS"		/* NRIP save */
	       "\005TscRateMsr"		/* MSR based TSC rate control */
	       "\006VmcbClean"		/* VMCB clean bits */
	       "\007FlushByAsid"	/* Flush by ASID */
	       "\010DecodeAssist"	/* Decode assist */
	       "\011<b8>"
	       "\012<b9>"
	       "\013PauseFilter"	/* PAUSE intercept filter */    
	       "\014EncryptedMcodePatch"
	       "\015PauseFilterThreshold" /* PAUSE filter threshold */
	       "\016AVIC"		/* virtual interrupt controller */
	       "\017<b14>"
	       "\020V_VMSAVE_VMLOAD"
	       "\021vGIF"
	       "\022GMET"		/* Guest Mode Execute Trap */
	       "\023<b18>"
	       "\024<b19>"
	       "\025<b20>"
	       "\026<b21>"
	       "\027<b22>"
	       "\030<b23>"
	       "\031<b24>"
	       "\032<b25>"
	       "\033<b26>"
	       "\034<b27>"
	       "\035<b28>"
	       "\036<b29>"
	       "\037<b30>"
	       "\040<b31>"
                );
	FUNC1("\nRevision=%d, ASIDs=%d", regs[0] & 0xff, regs[1]);
}