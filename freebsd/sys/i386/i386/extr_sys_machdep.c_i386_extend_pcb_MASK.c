#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct thread {TYPE_3__* td_pcb; } ;
struct soft_segment_descriptor {int member_1; int member_4; unsigned int ssd_base; unsigned int ssd_limit; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int tss_ioopt; int /*<<< orphan*/ * tss_esp0; int /*<<< orphan*/  tss_ss0; } ;
struct TYPE_4__ {void* vm86_intmap; } ;
struct pcb_ext {int /*<<< orphan*/  ext_tssd; TYPE_2__ ext_tss; TYPE_1__ ext_vm86; void* ext_iomap; } ;
typedef  void* caddr_t ;
struct TYPE_6__ {struct pcb_ext* pcb_ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDATA_SEL ; 
 int /*<<< orphan*/  GPROC0_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IOPAGES ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDT_SYS386TSS ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct pcb_ext* FUNC8 (int,int) ; 
 int /*<<< orphan*/  private_tss ; 
 int /*<<< orphan*/  FUNC9 (struct soft_segment_descriptor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trampstk ; 
 int /*<<< orphan*/  tss_gdt ; 

int
FUNC10(struct thread *td)
{
	int i, offset;
	u_long *addr;
	struct pcb_ext *ext;
	struct soft_segment_descriptor ssd = {
		0,			/* segment base address (overwritten) */
		FUNC6(IOPAGES + 1) - 1,	/* length */
		SDT_SYS386TSS,		/* segment type */
		0,			/* priority level */
		1,			/* descriptor present */
		0, 0,
		0,			/* default 32 size */
		0			/* granularity */
	};

	ext = FUNC8(FUNC6(IOPAGES + 1), M_WAITOK | M_ZERO);
	/* -16 is so we can convert a trapframe into vm86trapframe inplace */
	ext->ext_tss.tss_ss0 = FUNC0(GDATA_SEL, SEL_KPL);
	/*
	 * The last byte of the i/o map must be followed by an 0xff byte.
	 * We arbitrarily allocate 16 bytes here, to keep the starting
	 * address on a doubleword boundary.
	 */
	offset = PAGE_SIZE - 16;
	ext->ext_tss.tss_ioopt = 
	    (offset - ((unsigned)&ext->ext_tss - (unsigned)ext)) << 16;
	ext->ext_iomap = (caddr_t)ext + offset;
	ext->ext_vm86.vm86_intmap = (caddr_t)ext + offset - 32;

	addr = (u_long *)ext->ext_vm86.vm86_intmap;
	for (i = 0; i < (FUNC6(IOPAGES) + 32 + 16) / sizeof(u_long); i++)
		*addr++ = ~0;

	ssd.ssd_base = (unsigned)&ext->ext_tss;
	ssd.ssd_limit -= ((unsigned)&ext->ext_tss - (unsigned)ext);
	FUNC9(&ssd, &ext->ext_tssd);

	FUNC1(td == curthread, ("giving TSS to !curthread"));
	FUNC1(td->td_pcb->pcb_ext == 0, ("already have a TSS!"));

	/* Switch to the new TSS. */
	FUNC4();
	ext->ext_tss.tss_esp0 = FUNC2(trampstk);
	td->td_pcb->pcb_ext = ext;
	FUNC3(private_tss, 1);
	*FUNC2(tss_gdt) = ext->ext_tssd;
	FUNC7(FUNC0(GPROC0_SEL, SEL_KPL));
	FUNC5();

	return 0;
}